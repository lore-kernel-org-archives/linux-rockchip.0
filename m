Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4367CCA6001
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKJiAD0GR98rYx+K0umLi8WcxD9AnAQDuIUOWVNN+xQ=; b=mzfgE1uUFLmbrK
	DTcTsLP5Tug3QFMsdYkAOF76KgVoFHqnYd3sqrWIjznkI10e8c3GbEms5EPhiq8D0fr7KhmwJEsIT
	MnCEKTJwK5waHiHykW12Cmn90IZP/1IlJnwFK5xyYVz37ROJWjY8dSqoI8ZDqa2pe5v9NmS2kHybW
	AOYsbXQEoB3YscA/qgZHtLy4cipsqwRRQODG43z5/05+rn6HdyUBkI5e0VlhANEYe/strYW/6uo/P
	5Bl4X0ypM0KCYI0BZhS1FMGiT3mE3CK+mtWWwvNWOpVeCCXnB9qp/BV2Gy+jF4rEFXil8g4GvOQSt
	vXpPWiF3cdDQXGRVZH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7dA-0000000167g-3y4p;
	Tue, 06 Oct 2026 16:03:04 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7d7-0000000163c-2RqZ
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:03:03 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-487049569b6so721854f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1791302579; x=1791907379; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lAKGigWSN+rmthZd67UvTxza7+7ujThB0c4R/68QCpQ=;
        b=yNZ/J8gBw/FmSXeHrGpK+3bHtZNnR6yxuAMQVSs1khixIJtznZwsu1473xXuN3zmsx
         nMO04yUu1n88Y+Qcq0bk1sNQRrJiOoqIgYmr3h5OEDkTv8DE9QaHR10geeHvdf06YndG
         1aBFV4/S3WHKqiPtK8hWQG3v/b/6gPsOv87stleg90QA9H9l1Erd5kkI48gKGM2QEgo/
         MSA+oodVIJJ+8/bcpcP3eE/r3+yGMH0dfg5WHae9pELyod/3FzwpDEQPqZvZo0fw1x8j
         o1doyS/cmbgK5tZ8bKxmPIhg2GlPa50aTdd7R3rY0hrk0VSOBgGUFmIwbzGV1xyuW2hN
         t7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791302579; x=1791907379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lAKGigWSN+rmthZd67UvTxza7+7ujThB0c4R/68QCpQ=;
        b=yPQ13KvA+uw31cU7bT43rZJ9EOhoSQzsYE+hBc9VD6FzQkc7OBBHtjRLmBLWhmM/VW
         bqymIVtvRtPGY1fSmW+vML3Us6WQ3ihyN5HVtTUAiGFSuMsNzbEfXuWMGAVbjJi0BsT1
         m9yvClwFIxOx6g31yNNSD6JfHi41XoKBD5NZsXgc85et3cYPCZ9dQEDz4kTzertavYv5
         9SUOA3abgOwwy6TTO84OzFdu/zxymjjH92zX2ec2Y3plaFik+FC4mfHhi9nC4/rZzvsY
         LxXDaVT3z7s41Ek9dov+syV6yGegNuiLzw6plx5DQjLs7i904o+yS/dcDHvp+Ih7fxhd
         8XQQ==
X-Forwarded-Encrypted: i=1; AKwUvByNyzjfLonijA7JBKb3zzK4PDoPicsVxC3acncyh7fKjJkf9MUKcc3KLs3qPwrAt2iIMqvuzs2AQHZG2eAnLA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIuLjAbMwZAAqSn0UNEecMQBGMLl1j3N1lAY+8AKntUcVTI2uoB
	l9sONNFZXvt0zyiN0Q5VBQahICvrsx4bzFpM6jvzOYamDs9VBgakwV2TR2Ebnm1GKbU=
X-Gm-Gg: AYBFou2nP9RfKPuCpH6YjPhLY1QCjaO9rWvgYJSc23cZZQtpm0jbxRtAsPBnNfxmpeX
	zJXe7th6ppvsYukZzP3J14oBuEKabVCRSious8S8rOLSH2waFcjuUZh6p61Xxv1gPLuoYPxXtRw
	S0JQPE/mpBs554y1CQigfIIiohkaPIE/Y+bxyk4jQhr9ZxXl3tNbnFvD97LdCA0F9ranPuA1tOt
	u0QWgCfyju88g8jebb8OJndbmiPGPfMevHKhHbTg8+vt38vwOr6yYNRhD7WIPECkKwJo/gF1KJH
	2IpQ3VSEFvUYUZDTW+eZLBsbYoxlwqIHJfAXuBb9sLh1lFLlHSZt7Qo0Ug5fyfZ9cYa+4CtFvm6
	GY1TmbBSbaEJDLGp4T0TKgg0cMMt0OW0aNjWgqOQ14FZ0HYRY2S3dvMATAF6kkoATfa4a0xIpu2
	fxG/GoHPRWcAd1vKsdIlm4KH3yCAk9MTqfUryGGd1iTHQctfSl62/g2ULcJ28v+jkc0Ky5b+GE7
	t4HbJi06nOLZxYEMg==
X-Received: by 2002:a05:6000:2c04:b0:48c:55c1:fb50 with SMTP id ffacd0b85a97d-48c6d1cbc24mr3125986f8f.40.1791302579018;
        Tue, 06 Oct 2026 09:02:59 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.85.242.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d2014asm369641f8f.38.2026.10.06.09.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:02:58 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 06 Oct 2026 20:02:40 +0400
Subject: [PATCH v3 2/5] dt-bindings: power: reset: syscon-reboot-mode:
 allow supplies
MIME-Version: 1.0
Message-Id: <20261006-b4-rk3576-reboot-mode-v3-2-6edba064693b@flipper.net>
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
In-Reply-To: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, 
 Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1488; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Qk5juJXyHQAA0FzltH0EG8o2EdUhAIQpUus6d2gQKFo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQdlV69416CV0SY0q2a6g3/lvREXw3JaLVe8uyHhWGR7
 GMBx/nRHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEy14HFGhk4V3ggHMe6XpyPkA48GW/nN6T3hbZU8zyvO5D3b5Ip3cQz/QxiLTU0
 r8xh17WrDPwscuvcndcftWYsZL9Slchi2tJ9gBgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_090301_755511_41A2448C 
X-CRM114-Status: GOOD (  11.31  )
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

Whatever program that acts on a reboot mode runs before a full OS, so it
may lack the capability to enable the regulators it depends on, and a
reset that preserves the mode register generally leaves the regulators as
the previously running system left them.

Allow a reboot mode node to name such supplies, so that they can be
turned on while the mode is being requested.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/power/reset/syscon-reboot-mode.yaml       | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
index 79ffc78b23ea..5ed70c87269e 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
@@ -36,6 +36,14 @@ patternProperties:
   "^mode-.*$":
     maxItems: 1
 
+  "^[a-z0-9]+(-[a-z0-9]+)*-supply$":
+    description:
+      Supply that has to be powered for whatever program acts on the mode.
+      That could be a boot ROM with no access to regulators, and a warm reset
+      leaves them as the previously running system left them and not necessarily
+      what their expected out-of-reboot state is. Any supply described here is
+      enabled when a mode is requested, and stays enabled.
+
 unevaluatedProperties: false
 
 required:

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
