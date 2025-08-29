Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9D6CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 01:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OSkzqm/qoLSquXx1X2860jX5BZWOaLsIpf3Ol1gXHAc=; b=iHPW9DgPsYEs5g
	4brPKKJv6gpJyI219WOj+yAMbH2IwmVA4Smzh4Q545Y2tOD+FFviBEW+u7p2UWcPFZ5ol/eveAsBf
	z7oURMxXi9fXLLuj8a6r+hlhZ/FgwLE/osygbp8bD73HJEEbhK+zxRVv05hLee0WaC6WYG7ETlUWS
	EwpjBqrFIKnMfygOLCVPlQGQvt20VZ09b9a2+mIfZB1cX/PuXHnTRWe5FmoBxl5Hqz/lQOD/AlneK
	7H8dNzIc9C8vdzRbO1iiO6tlSIhw6vB5thk0gHg0ezj0kR7p/MC7ZJr6CyGS96Kw9w4nNeXK+T0lQ
	tHhNLMB/py7qLrVeeEPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urnec-00000003ye0-2wcO;
	Fri, 29 Aug 2025 01:11:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urn8b-00000003tZH-0Ij4
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756427919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8rqunLN033sFAkyGdyaLYf8O7m070HCgXqjcGrGgaTc=;
	b=X0t+9GC6MoI0PLs/HRu/PxT+/AY4xABaaScSagmhPOusllB28RY8IWK3ypJwlUkOTOB1Qr
	714SLQy7zv6d2N28AkfP04ZtcKt1BtESlHrarkzmouELJWpPMfLtvLBr7PGUJE7b+EMZ/c
	wqFX+NeSFVSEoj8W3knQsb1FI6x1njw=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-220-ux6u1Y8_Nwem1npOb6MTzg-1; Thu, 28 Aug 2025 20:38:38 -0400
X-MC-Unique: ux6u1Y8_Nwem1npOb6MTzg-1
X-Mimecast-MFC-AGG-ID: ux6u1Y8_Nwem1npOb6MTzg_1756427918
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e86499748cso698123285a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:38:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756427917; x=1757032717;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8rqunLN033sFAkyGdyaLYf8O7m070HCgXqjcGrGgaTc=;
        b=wc0lFBv44I6sVOSjOuB+YY78tVjNlB6Lj51d90rqpDJXOyckHdzpVnIvDfiZpy2WH7
         /JeE2DNmpzaCYHgHaRtIiUooLBI52FhU0VOTSH5twbPJys9mOzhTWkoumjm42k7Q/xA6
         V72fjQJ7Eg1EUKILU9VHrV/VuuvANHCqGIfBCxUQZqYK0GY/ewE7yAFbAifVr1mhxCIw
         gQ78f6krKDVCZGtZAR3oKvnqNnPFqo+x7LznJPBcS7tRQjXRyeOuOZIQDqaYvmYo+bwI
         AvKElXx/KSwKgfukWqNdIEsphZxOSowauQOQebIwGwPzSkUrXHBOgAbg39C+Zlkfjg0s
         rLXA==
X-Forwarded-Encrypted: i=1; AJvYcCXkCKTfp+TuWtH2pgjlY9ytt8ilZMzsHqXk1Uk2MZ0YjefsqcW0JgYd1LJqlDyYNLjWA1fTtUoF/sMbwLQnZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUsQ623Fn+f918ixzXX6W5qaRFoxSX1Lpg3QQflbK6JPR+sIzZ
	wwJ8youYlWAUrYini9np8Bpeoqh4YVPgAoeiLPDeo3f7/ZmV2thwTQZP0ZpeSVlPB0W8MIJdQeL
	ycwqpLaL5GDYEE+zK6RdQAeckBbqfTyT5IQOC9Eth5q8AB9QdopR9BPyRxbEmRsPKfH+x0lQo/u
	LUUAOA8bZviloCWVgfnr+RG9oTbBmseNM9k9rBuLocaoA9+Zp+DzvBHwTm
X-Gm-Gg: ASbGncvM6mk4Ipai20KpXGPzQaB7Cpn6VTjS836QZ/RaS8T3EUcPOZdbE/uxh4X4HRa
	dvgajwZsFmejQNowGyZWT/s1n0y+cfP/uE26EZd2GC1VoZ7TyotJCMhbBYG7FuYAVyvnnilxRzq
	gBITQR6N+i7o20USHgSPIy5aWashYPabM831MhCrgMFc/+PAa/4L+vhpTVjLfG5DakLWOi2LmmZ
	nwnI3f0hbGjwlL4pdF0qnYJ5KjIV2N7lWlw6ErCOfInFeh85eAnKp/9/xcLPWmAyxwm/1OLMmYi
	6Ea5NqF4jwzKJtC9eXBct6aM5ltPTStVCt1tM/KsntzjBWJ4yRpOH+WCHgjwhkDeu1cSZZXiEWG
	8ggi16wvcBBdQtCxXGnw7xrCJfvHs3h64OQ==
X-Received: by 2002:ac8:5acb:0:b0:4b3:7ec:d22d with SMTP id d75a77b69052e-4b307ecd715mr29164981cf.20.1756427917120;
        Thu, 28 Aug 2025 17:38:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrNg2tdKhgAQRayLc8LgRw9eIVhmfPzttivKDw9wQ2+vibEJMjJFoedzMgEqufDrqQJ1tp1A==
X-Received: by 2002:ac8:5acb:0:b0:4b3:7ec:d22d with SMTP id d75a77b69052e-4b307ecd715mr29164561cf.20.1756427916486;
        Thu, 28 Aug 2025 17:38:36 -0700 (PDT)
Received: from [192.168.1.2] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6264141asm5588696d6.65.2025.08.28.17.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:38:35 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH 0/8] clk: convert drivers from deprecated round_rate() to
 determine_rate()
Date: Thu, 28 Aug 2025 20:38:19 -0400
Message-Id: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHv2sGgC/x3MQQqAIBBA0avErBtIQdCuEi1KpxoKi7EkiO6et
 HyL/x9IJEwJ2uoBocyJ91ig6gr8MsSZkEMx6EabxmqLfltR9isGlOEkzBq9GpVVk3E2OCjdITT
 x/T+7/n0/tcMa8mMAAAA=
X-Change-ID: 20250828-clk-round-rate-v2-c1b181f598d9
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>, 
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Michal Simek <michal.simek@amd.com>, Bjorn Andersson <andersson@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Andrea della Porta <andrea.porta@suse.com>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756427914; l=2337;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=qOHN+W3Wz6uTZsr/RwMmfVYf0YXCACp4YcP7f8Cqg6U=;
 b=2DUui3a8WkDmdWMGxKa0tpZlU3l9oMHhpwiGjtyJgflCFJnuf9oCUJ5nnO47Aeh60KidBjjhF
 owMBgQLSuwVBuDusC8N4CQta4YOJg/XwS432e14Efcrlr58u+ubkwbg
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: aOkmgbzpFtskHgd1BAdYqVqBUzGX_ffMRfEMQAZ16Tk_1756427918
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_173841_532426_A74CC5E0 
X-CRM114-Status: GOOD (  10.49  )
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

Here's a minor v2 to my larger 114 patch series at
https://lore.kernel.org/linux-clk/20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com/
that only includes 8 patches where a v2 was needed. To reduce the noise
in everyone's mailboxes I'm not including the other 106 patches that are
still valid. I will supply a 'b4 am --cherry-pick xxx' command on the
other cover letter to exclude the patches in this series.

This series has no dependencies and can be applied in any order.

Changes since v1:
- clk/rp1: Updated to avoid merge conflicts based on what's already in
  linux-next.
- clk/sophgo/sg2042-clkgen: Removed &*
- clk/sophgo/sg2042-pll: Updated comment from round to determine rate.
- Removed unnecessary space after cast on these drivers:
  - drivers/clk/nxp/clk-lpc32xx.c
  - drivers/clk/x86/clk-cgu.c
  - drivers/clk/zynqmp/divider.c
  - drivers/clk/qcom/clk-alpha-pll.c
  - drivers/clk/rockchip/clk-half-divider.c

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Brian Masney (8):
      clk: nxp: lpc32xx: convert from round_rate() to determine_rate()
      clk: qcom: alpha-pll: convert from round_rate() to determine_rate()
      clk: rockchip: half-divider: convert from round_rate() to determine_rate()
      clk: rp1: convert from round_rate() to determine_rate()
      clk: sophgo: sg2042-clkgen: convert from round_rate() to determine_rate()
      clk: sophgo: sg2042-pll: remove round_rate() in favor of determine_rate()
      clk: x86: cgu: convert from round_rate() to determine_rate()
      clk: zynqmp: divider: convert from round_rate() to determine_rate()

 drivers/clk/clk-rp1.c                   |  58 ++++++++------
 drivers/clk/nxp/clk-lpc32xx.c           |  59 ++++++++------
 drivers/clk/qcom/clk-alpha-pll.c        | 136 ++++++++++++++++++--------------
 drivers/clk/rockchip/clk-half-divider.c |  12 +--
 drivers/clk/sophgo/clk-sg2042-clkgen.c  |  17 ++--
 drivers/clk/sophgo/clk-sg2042-pll.c     |  26 +++---
 drivers/clk/x86/clk-cgu.c               |  35 ++++----
 drivers/clk/zynqmp/divider.c            |  23 +++---
 8 files changed, 201 insertions(+), 165 deletions(-)
---
base-commit: 8cd53fb40a304576fa86ba985f3045d5c55b0ae3
change-id: 20250828-clk-round-rate-v2-c1b181f598d9

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
