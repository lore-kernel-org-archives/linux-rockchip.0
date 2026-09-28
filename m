Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0D7CA5FA3
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 17:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKJiAD0GR98rYx+K0umLi8WcxD9AnAQDuIUOWVNN+xQ=; b=yX2SCj3K5y69hd
	6EAWsiPndza2N9c7gm/O/ykavVHTmHEqy38Zi91TRJrLVoIjbYvdaovpQ5vuPP+w7tkUOrmW07ItE
	ai/nsOImf7j4hCS63SUtbj7fN09fOjuWWLbeyEH63q81g3ZhkUJlVqOPpYhs619i6tvu8nk/aeEMz
	3Ug3K+owBc2Y+qIWJahVaPb55QZC3TnB5w9FK33yb+XcVUO12CmQhlJ8+UcSEzIIndDS5W/7e4G1P
	AUSuON212rpATjmLqyrqnq8AcisWuFSa0iakCYblZDhuoBtu4ZHYlw7qaLcrPvXq+zVg/QGI1AkIt
	1hWl0cI7gbZhR6HEseSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBF05-000000017rE-0MEe;
	Mon, 28 Sep 2026 17:18:49 +0000
Received: from mail-wr2-x0e.google.com ([2a00:1450:4864:30::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBEzo-000000017fC-16vk
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 17:18:33 +0000
Received: by mail-wr2-x0e.google.com with SMTP id ffacd0b85a97d-48884b926f0so2099352f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 10:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790615910; x=1791220710; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lAKGigWSN+rmthZd67UvTxza7+7ujThB0c4R/68QCpQ=;
        b=jvCu3yushiEqwGkKN3G4U2BnoIjY6/3nJUrxgQOd47fdT1emwgPEJEffH97nPdqtur
         HaVTFFgUZkFa4TEFSK5xZS4GeIggJI3RHSlIpMF8BQwR8hjFMEqb1vj0y3P+S2TjEeeV
         2KhwDyVAwSU1PKIDr8gBsAp7zn/ayo79CD4/p/vHaKAnF0gjps5g2pTn3rDXEi9dM/Sp
         gNGMdzQf5LuNBkLhPQAiy5GaB2p8gVMJXKab79VPBsq2CHhgla5Yq9mUV1q5jEnl1rwI
         iYtGcXN7op4EAPRHZX3I30QGpIos+oruN7ZAstNGLNJI+jpzMwYyH+BaXy4jtP5Rm6hn
         Qh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790615910; x=1791220710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lAKGigWSN+rmthZd67UvTxza7+7ujThB0c4R/68QCpQ=;
        b=DOaD99aaPzNaj0fvBWqyytPCsA7c1yYQldjXZuY6/s1VZUWN7AdoP/1wpxra6WTbZd
         I7Xp29ALXQXcbl8CArRulC5rt7ROM60FI9c3cO78LXj8VgaUzMQzjGFhbd1rYMGRdVBK
         u7EJuc7glMcWsohzVs8PozRZPpk1Q1HnMFyaorj5u4SF7yK1HN+PJerFyveixPcMMHAt
         S0RoUcY0nVjVHguXbU0XFI0PWgfeEmULWG4XtQimlnq2TUvK0/H5AN5JIRH4zILwCmsb
         1v8SqaZt7DfyjR2k1UcCmudvOhPbihR6nuBpm0HBtFR4G9+Syc+Na2VjawnWtWgTuD8f
         prjQ==
X-Forwarded-Encrypted: i=1; AKwUvBwgZVG6WIIE/Sgq0NKEZifWDeu70vJ28tW9bTUFWD9sxiTtkbC7VodJHzoQHuRcslP/5Uah7pvHFJ8/IP8A1Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYI8CYskPcVrRLpc9ngbqzjB1xKmdjHr050MzqBE7gB3/gwRTb/2
	6xNap9TMhdn9J+TdWSPN5Uw38M99LlBwIS6bpLt6jm137KNyUdKafHJjbs+qoxq8mPQ=
X-Gm-Gg: AYBFou0Z6b6rkvSqw9XtrgPNpNCspwIff50A5zrJvJYlm1HcPCIBsA2zKjStD8TyVog
	MrMIY4sStjfOQ0VG5AeX8i71UD5oq28zw+VL0uNqE4lz5ZksromKBgphBEdytbfjANvAHfbA1Yn
	BJ7PK2nIAx8UTmeb2xv4Xh9quVbiOQyoM/UuQHnrOSf4J72NYcDDZOY+9BgtYuEVKTZx15UptBX
	5ektwp7403Edp64/PgdugwpdtbETHHIgKMrdCMX+xv4JIYRFo3OD1oJQRxdBLnRyHLY42vVUIgR
	RjVnWq5X/KzGcGAaa726o1SZ+Ijft8S2luwm7sZBFSzyB5jeEg+Gl+dgBPUo7TjpGal0cBxMRB9
	oSlUgdKTOhdjsAJWcM3hRvVQbPszjZSulMKudOXnoWlAblEooaDSMU8+B+cWWLSWiv+VXMTRFpj
	VIBTl2kzHPuOR+a99wh9136lvBvoERrwhJiYo6KkzLKO5rMH6/W1b83nSu4tMAUtkZ90KBlmfPr
	C3Ka84lKdUbs5UoTca5SVfCA9s=
X-Received: by 2002:a5d:5e83:0:b0:488:84bf:eedf with SMTP id ffacd0b85a97d-48884bff147mr13188564f8f.48.1790615910338;
        Mon, 28 Sep 2026 10:18:30 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a84221bsm29224973f8f.36.2026.09.28.10.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 10:18:30 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 28 Sep 2026 21:18:17 +0400
Subject: [PATCH 2/5] dt-bindings: power: reset: syscon-reboot-mode: allow
 supplies
MIME-Version: 1.0
Message-Id: <20260928-b4-rk3576-reboot-mode-v1-2-65486b03bd41@flipper.net>
References: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
In-Reply-To: <20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1488; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Qk5juJXyHQAA0FzltH0EG8o2EdUhAIQpUus6d2gQKFo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtWhjXfaohRDvZ2oGd+Uf+xu0+NgEVbXrP2LMEDyzYf
 lr1rO2njoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKa6nZPhn7Ve/ve00199+Wc0bUvTCPwY+1/4mM2mrXznHkRFzJBZ/I6RYbvqtra
 ZZ5mnWmQxbU9nqIhql5C2M3tQtGISw1Peo/8EuAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_101832_334964_E8DC89FF 
X-CRM114-Status: GOOD (  11.52  )
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
