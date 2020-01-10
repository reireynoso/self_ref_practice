class User < ApplicationRecord

    has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: "Follow"
    has_many :followers, through: :following_users

    has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"
    has_many :receivers, through: :sent_messages

    has_many :received_messages, foreign_key: :receiver_id, class_name: "Message"
    has_many :senders, through: :received_messages
end
