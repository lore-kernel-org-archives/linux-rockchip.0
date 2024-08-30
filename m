Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65DDACA0EFD
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 17:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG0qYG2DYeFyNa/ofNUEsDaAsCxR69U7maRewA4ml0s=; b=tQSySs8m2giCtr
	JUZkGwYpG+gM0CKjx7DOzCr2aBQH8kO5dD4pq/lADJP5IOCIn1N5yvUXaTwPbldngqj1GCWfvYwHn
	duxUGawFOSEJGhXEB0Td67qcn8ZLiVOSp+oAISeGTvV2mj+u+XFpexq4fq6C/hIaZzobhBsyrZOr+
	FnkBmHdgeXLCP5pdSsRdNst6mSf5j7U7Ucs9GyFqbUjju3iD7d6JO7kYxOhpesqy5pzNfIqtUk5fG
	pIcPbNTEDamc0ki/UeCTM4suvLk51w6kJcqM6Zi6cMGCxeQyOnSWfyrxqYVXMPLiXCf4m1Dvzw4xc
	XewhPsjx2nmQJqW3GebQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5rO-00000007Gem-1iPL;
	Fri, 30 Aug 2024 17:56:34 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5qW-00000007GSw-1n9F;
	Fri, 30 Aug 2024 17:55:41 +0000
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-82a29c11f05so38472539f.0;
        Fri, 30 Aug 2024 10:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725040539; x=1725645339; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MF+sXceWEcBfG7p4hvfyj5a5Bti98QDvGTaVeFBZ7w=;
        b=UYa+fpQKNH4TWV3O+eMwi4LLmmWlD2GD3aDSdLY0TRZ0safd1gc01jnnVuD7OOSYIe
         JJhcLwpEqJycVxKzWDpqiTsoqpEd9M7+eOwZLwLDVQnZwF4wSiao082/mFwITxoSo0GW
         KHWpUZTx9tg2uZqnc4zDOXNFi6nzz/YAhvdeZi2j/D+7N1to9I1LWc4W+azhk0IN/GWc
         nvTSxLgqcCd4yM1lR4kO5uWkR9EI0vxP44SMvBqxo0k+C3J+Tw6sbHtFTelhTHCj4p0u
         6AYKohhO0YdVrkPPfd8FZtZvdKvYF+WI71BKJbOF+TfHTv95m1MbLpzXhKdxjeyJO+9G
         PGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725040539; x=1725645339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MF+sXceWEcBfG7p4hvfyj5a5Bti98QDvGTaVeFBZ7w=;
        b=bamf2wnsF6g6DiZu+wdEPxnz6HA8yfQkmIM2eEZVizHPXuRfyENncbJqqDvkble0tC
         gNUcBzwDIa+4SGvC+YS1aS4CFlJkSGo3KCao0l9LWgmMB4MqNKOhgBRV+2OjZNq129xE
         7CjCvPayEYubUE6SO/J5Gut/6cK5oAfoJFI3MqH1u0gjOhs1MgauXRKPlvSzaeNMUj88
         8j7VvHbAKRlSFw2Dne0PztgZ6kWwmXPqL1ESWzLtwVgYip97Oood4r+bOe5ifihgPjWu
         gDINPZTsD/fXuuoToltTQFpqfHVAMPea6HkEqVGFY3/vlo1YJm/zeE7IMRD7I9erPdr7
         bFVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZovtqbhhn9VKkpWX2qt7vtTB//BL45DSDcCG4+KoopITangVL3YS6/XUFs+9dq+JFfT6lJYe2OAqw8FG2Tus=@lists.infradead.org, AJvYcCXZXYmLXI+86EJW5zyDos8Fr06EjmTS6UTwScptP4BjxMuhkZFG+dRAfRyjS25jYefhhzOBFaZYOqh2rmjk/C2V@lists.infradead.org
X-Gm-Message-State: AOJu0YyVsROB2L/jHUIp9CdVO/Qk5Dzcb5hxi30uweskncxneItamZ0j
	rdiop4kssRfwcVjlgYRZH8b9pJqyU/WZLx7SgAhrtP+3m6bga0Kx
X-Google-Smtp-Source: AGHT+IEJO+rT64x31n995BvsAz22y/GdYxKgQSigICRU69AK6S1WIiCNnm+JI0H61qKRycetlf7dgQ==
X-Received: by 2002:a05:6e02:b46:b0:376:410b:ae67 with SMTP id e9e14a558f8ab-39f379376bamr77474555ab.16.1725040539147;
        Fri, 30 Aug 2024 10:55:39 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b03fb67sm9548685ab.67.2024.08.30.10.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 10:55:38 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: cristian.ciocaltea@collabora.com
Cc: Laurent.pinchart@ideasonboard.com,
	aarnoud@me.com,
	airlied@gmail.com,
	algea.cao@rock-chips.com,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	ldearquer@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	markyao0591@gmail.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	robh@kernel.org,
	s.hauer@pengutronix.de,
	shimrrashai@gmail.com,
	tzimmermann@suse.de
Subject: Re: Re: [PATCH v5? 0/6] Tweaked basic Synopsys DW HDMI QP TX driver for Rockchip RK3588
Date: Fri, 30 Aug 2024 12:54:40 -0500
Message-ID: <20240830175440.2596-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <68e78629-5a2c-433b-8c83-50ffced04268@collabora.com>
References: <68e78629-5a2c-433b-8c83-50ffced04268@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_105540_485988_6939597D 
X-CRM114-Status: GOOD (  19.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cristian Ciocaltea wrote:
> Please stop doing this!
>
> I appreciate your intention to help, but this is not the proper way of
> doing it.  This is a work-in-progress series and you should have asked
> before taking over.  Please do not interfere with other people's work
> without having a preliminary agreement with the author(s).
>
> Additionally, before submitting any other patches, you should get
> familiar with the process - see [1] for a starting point.
>

Hi Cristian,

Sorry, I did not know what the rules/norms/customs were around this
kind of thing here as I figured it was an open contribution space. I
did not know that I should have asked for agreement with you
beforehand. So go ahead and ignore this patch series if it goes
against the rules/customs. Even more if these points have already been
addressed, as redundant work is obviously not helpful.

That said, if there is some way to help along this project "the right
way", I would like to for sure! Just tell me what you'd _really_ need
help/assistance with to get this moved ahead and I'll see if I can
give it.

Thank you!

- Shimrra

(BTW, I thought I read a lot of that stuff in your [1], but I guess I
glossed over some of the finest details; unfortunately my mind tends
to do that a lot [drop details], so I will not contest your complaint
about the substance of the submission as containing mistakes, either.

And I only think I submitted one other patch before so I am not very
experienced at this group, despite being much more experienced with
coding. So again I apologize.)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
