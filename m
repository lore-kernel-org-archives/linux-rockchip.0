Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19452C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 10:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwOyP9RJ8/NPUe6l7tstAlvvMQ7LBqxoLhAQAJgeAOQ=; b=QQ8CI6uxM14ugN
	khNkzmwPT62sxssa8Tfm7uesKpCCr+HRJd5i83JGKL2nUBvEgsjp/kZD6W5+cdQauDIk1CKDBkOrE
	sw5lZjHbz2VYOMXMaLlcvrXKpemaUnFL991eisB4oQVIFeAJC3ssMalN5yoN62u8bNZf3KCpOQ7E/
	+BfRYs7aanLYsZD85S/CKRHq+/9pmdjikGH5EDXskNTyZ38IGfHpTi6gmLzGOKJ0SuYYdV0AWfs9s
	3dAa6ErKLFKeg+13JljDOhOS2pqgfPBfYf6JtedDfP6xWWGij8h56MDE7uNY2L+fmeFDy+fJmhKnV
	u8sCVD2zXJsRqBtbr0Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7CnA-00AhwO-1k;
	Sun, 26 Nov 2023 10:55:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Cn7-00Ahvh-1H;
	Sun, 26 Nov 2023 10:55:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9fa2714e828so446599566b.1;
        Sun, 26 Nov 2023 02:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700996105; x=1701600905; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ECypgGqHQBjY12h9Higzn7Wesb+tD2zqqv/5yygreuE=;
        b=PuG0LrpP2bIppiRG6BdlVPY7NqQyqXC96fOFpBa0TrFvgNI8se3ioktbD/6FMDxh6c
         ssIcwgFstrguilCR7KuYGQst8jcwfVotZLx1OelAejKEW0aE6eJhN4Aa5kkD39zGba0s
         lf5BNpANHy0F+TxD9x9wXaElIXL6SR2gndvoQRks4Ro7yu+A8rDu9VxiuPXeYW5w02rr
         KmEdowjB1jDegEsTCXWcUcUAoGUjUvpqn0l3dTF65PCfqWoF5aFWfeqjJiOsCrjOUsa9
         6kI8ZOW9h4sLcBQ+INv5fLWAvxR7e/w9zjckRqh/hAt5HmVz0qwjlPX/50u4T97Jf0Uk
         FS3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700996105; x=1701600905;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ECypgGqHQBjY12h9Higzn7Wesb+tD2zqqv/5yygreuE=;
        b=br7h8gYRl4QXMJ5H42oQ3luWFEOrHA1vLNp7i+bhHm5HfgBQHyYMGxbXgZkXaQsQKd
         f1BHElZPCkYpcRZhTrpU+fpXpHcQNxrBU6Z/gObrcsaAWhjEHk8nhugItzLQeqsNviJj
         ClEULzx+rdw1k7G0V/FZGx5RsZD/mCNWgupnMoUbxxdRDpXyJXY0yMY+GqWxXZO6+SgA
         bsV2RW+sb/Gqerow8X74qtjgzOoYbKL4dkl2drlBAzlQk+JmJ7vhWV8YeCSbslYUcoxj
         RUqIgRZYVdkUARogr3EojCndW5QGgtme42q477wfwIFoDnyS9CSwgzierHOm2DjWojvc
         FesQ==
X-Gm-Message-State: AOJu0Yxb1g48dBIV5/EmOuv+Bx/YzqzSZ9Nx1PpvwfrHWLc62TnWkQRY
	KsDHIzzZ6KNwJL2b4iSeIwq/akjaNW4=
X-Google-Smtp-Source: AGHT+IGiaTC1sEjY/oPRpZNJ/wG8qGzhgZcG+LcLHsvxUX+adjVG4+rn73MntzJa0aF9TUzUUGhkpA==
X-Received: by 2002:a17:906:209:b0:9be:2991:81f9 with SMTP id 9-20020a170906020900b009be299181f9mr5808853ejd.1.1700996105077;
        Sun, 26 Nov 2023 02:55:05 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id e8-20020a170906080800b009fdc15b5304sm4437938ejd.102.2023.11.26.02.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 02:55:04 -0800 (PST)
Message-ID: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
Date: Sun, 26 Nov 2023 11:55:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/3] Rockchip inno_hdmi update
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_025509_438848_AD5354A9 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
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

Combined update for the Rockchip inno_hdmi driver in a
somewhat similar way to what is proposed for the
"Create HDMI Connector infrastructure patch serie".
Keeping the inno_hdmi and rk3066_hdmi driver functions
comparable makes maintanance easier.

Maxime Ripard (3):
  drm/rockchip: inno_hdmi: Remove useless mode_fixup
  drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
  drm/rockchip: inno_hdmi: Remove unused drm device pointer

 drivers/gpu/drm/rockchip/inno_hdmi.c | 56 ++++++++++++----------------
 1 file changed, 23 insertions(+), 33 deletions(-)

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
