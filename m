Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC58E92725
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hLr/7Ef8XnXeL+CmiT7NQqEfP7kIY70pj/prF6EbRmk=; b=L3P4gPT/hG4I8u
	Zux7UR/gHl1oyC3Ayg/EOwW96wfyxrtYwQB7jWVU995c00cnbtP3WC/dxPo3k5VCZ5uf+y6ytQS17
	rKpd7lIWAfdXCNyFcwEeGk8VBLx/YUJoVPOjY472Z6SMBpXwqTG7ojxRn/ORNYLyPcbe4ipd7gCy0
	/E6PE51HxCcpvE1OBbG0/DvRbGs6c3noexi9cMq0K9FxJ40X2fvjiUYtmt4h/w+1K/7m8/rnkwnE+
	ZuJeqoaDU0viS7Mc4fO+XQCsv6Gt9sHv7O6rcSWM4ROhSYAq5KyP5cmZHaapunDvqpvbv8NZ9A43e
	p7Yla3VZFghUEog4gd5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEi-00000003XoM-2KPG;
	Mon, 29 Dec 2025 10:12:24 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEg-00000003Xnk-4BNk
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:24 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so51747365e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003141; x=1767607941; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1vSgRP+Bs5qbIakzCpHlzr7o7ydag8RKKrO3j8O608=;
        b=VKZwTJY4bvcd3LRhsc4K0656//hJPVZBhBpvHEPVpo9Z+J3HJeW0WPj/F/yw7dn23a
         oGQUgAAN4WQljHS7Pe2qVcK4QakEU03r8Ec/i49WyIrrTbBq44CAhbs/qAzYqU/q7/hG
         x3KCJ12IDo82EBXsTHbI5PorJXF/+U73GjfCJvvhBcgjQAV5sc/iB85QkIdJyK8ZTvXe
         Qml+32SdHnBSO523Fw4HDdFiNs6kpn0yc7idSPOUDmeU4fOYuqlLhZnWPNK7FvVBgQvl
         U1mHWnR+ZRyuJ5dkzv2QMR4e7GtDHrZC3r+vKXe3RX9QeSsOXakjT+CNC4Q8eG8pdf7E
         Gd4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003141; x=1767607941;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1vSgRP+Bs5qbIakzCpHlzr7o7ydag8RKKrO3j8O608=;
        b=nVsm6q2So4vOhOJiw3+4RLfc7CgFUfens3dIey/1WMMQ0aG7PUaeMR4TSSHMB09gia
         p2ry8rro+YesUs7LymgRzIeNzdUQntEBLj7JqV0RkXF9sNoLimfqid4bV1bl03LLeQiU
         +lLLv+uGcy0maamuJJLIZViaKfQAn3SJt7aSHkgl+nhfMpQR8nCzc+xGMgpnUy/w74UF
         UyEJ0a3rW7f7JINYCrw0jZuInT5Xwz6dFMiyJ2KpHgTwaNj2ZoDS6a45ENJ2c0DKhF3B
         KvHq+fkrsm1sIjSm54bAHeGZFRqqX0LJJ6tEukmZbWfzCCwx13Nl9NBZC9uqe1LwmVDA
         H62g==
X-Forwarded-Encrypted: i=1; AJvYcCUJC3tGY/BqOYPTky3gCeRSflJC7624GbBzKKEXKXDLXC+J0rs2xAO4eOIrzH02atZReM172zKsNMuoX828eg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwDhfFouzCoQyO0y+paCCiEJG9Twl6DGMpjhZ0sHdXj6VxZhg3M
	XUdBOtP3cQ2uiT0TPUkqFl6ToMPTp+w924MTb42Y0yj0TWeIZhaWz+bO
X-Gm-Gg: AY/fxX5QXswlwK3FGAdak+rCCPoxPdO+Sp/rj++K0J3YVsPLDD3iq2BWYsBPGHXBKxy
	Gs40tJU44ZowD0uku3TmXGS+dJ2QwoBOP8EjwfkjsBtmUYVzDQ+VECACZBC7/GtvjmmhDQ6mjV+
	3LUii9eGO19Jhs24vuUUYQav63rmbweLAWzW5fgkNARmU4d2Ly1nGDm4HXJoQRpPPF2MNsaRfCP
	++5o/gnIvIFZOs/0nYw+uT48oZ6ysNkKQoxLRvvxG/0Fnn8uN3iJgjUl6gVFfNo2lRZleAdfqRT
	ZxFP5dUd0IOfPMzEy25y3aRkiUI+amxVTxyCUkrzZKgEMXHQETI3ZKz4K9gka7qlBnIYjmPVelO
	szP83xeZYyMMLTtDMcO5vwRPkTxNqBe3TDqd7N+X8VQkQQgkeq/9g/c5dhEfkdIoCGd41H8F4XV
	CWJ8fgYBkx5U78GzAcEYyaSCVIxTLj5AkD6BsT+vVxSKK9qtEK6albcw6yGrP/
X-Google-Smtp-Source: AGHT+IHlR0aXhu72J2TtWwVekmyRrRkDyvgOTcwGHqcoRX7TNY17EGN/wNGjrSuW2cqNhsN3lSNTHw==
X-Received: by 2002:a05:600c:444b:b0:47a:8cce:2940 with SMTP id 5b1f17b1804b1-47d195468a6mr302386315e9.14.1767003140541;
        Mon, 29 Dec 2025 02:12:20 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:19 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH 0/7] arm64: dts: rockchip: Sound fixes and additions on
 RK3576 boards
Date: Mon, 29 Dec 2025 14:11:57 +0400
Message-Id: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO1TUmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyMj3aJsY1NzM93i/NK8FF2DZCOzVOMkQzNLIxMloJaCotS0zAqwcdG
 xtbUAxT+MhV4AAAA=
X-Change-ID: 20251222-rk3576-sound-0c26e3b16924
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1436; i=alchark@gmail.com;
 h=from:subject:message-id; bh=LCiGByx44aPo6I9zaG1ReBsxglHofWHA8KNEqBtCywk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTCec14dG1Mwy2Gm4d01F2qTdhQ7tHWq/Y+L73eZK
 Rwj/YCxYyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKn2rWf4p5r7KSIt89RE3i/cnJ6Kggsvrjovefym0jzN6p+BblfftzD8Yi76xBR
 nNfHq4VjPX09OdLDs4fW4Oq3/zsbqY7575T/PYAAA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021223_057250_6A6D99CE 
X-CRM114-Status: GOOD (  10.30  )
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

Here are some device tree updates to improve sound output on RK3576
boards.

The first two patches fix analog audio output on FriendlyElec NanoPi M5,
as it doesn't work with the current device tree.

The third one is purely cosmetic, to present a more user-friendly sound
card name to the userspace on NanoPi M5.

The rest add new functionality: HDMI sound output on three boards that
didn't enable it, and analog sound on RK3576 EVB1.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Alexey Charkov (7):
      arm64: dts: rockchip: Fix headphones widget name on NanoPi M5
      arm64: dts: rockchip: Configure MCLK for analog sound on NanoPi M5
      arm64: dts: rockchip: Use a readable audio card name on NanoPi M5
      arm64: dts: rockchip: Enable HDMI sound on FriendlyElec NanoPi M5
      arm64: dts: rockchip: Enable HDMI sound on Luckfox Core3576
      arm64: dts: rockchip: Enable HDMI sound on RK3576 EVB1
      arm64: dts: rockchip: Enable analog sound on RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 107 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3576-luckfox-core3576.dtsi |   8 ++
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts  |  22 ++++-
 3 files changed, 132 insertions(+), 5 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251222-rk3576-sound-0c26e3b16924

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
