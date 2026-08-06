Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7652BC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3kXrGn+afA5oXO+pM3yItZ4dPR+v2Grudky2APHfEw=; b=gbfQ9+InJ6o9r4
	5Jm7v130ofGoFt6NStSAsH2ZjRusL0WwK67rNkzW349lrqatN2EhlrfA9OrkG5ts53YGWoe3LVuNB
	D/I2eQStNMHd1gyBek1mGSnwqXwqvqSvZVFKHYCB0M5Jn3QIlMJmgdws3hU+YXF/DeD4Tkbt0/IK7
	FW9EL0aODwNSZUqJAjdFWvJaczDybu9RJVzfi6wvFIIyBSuAS8lRNm7GniRKWAITerReZuWCh4D9d
	l2VlKQwd6nU8YFHHIyvjt3pYfhHJvpi3hzO8z3xMJzSuJqCENpu1BuqTB2eDRF5tfGFzcdODX2KUT
	Y4Se8vPJu7CJl1H9jcjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZJ-00000004xtM-0yHp;
	Thu, 06 Aug 2026 05:23:01 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZH-00000004xqJ-18mr
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:23:00 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-84e0688b859so502629b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993779; x=1786598579; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3tvFFAh4lS3mG6cJ5ZjUOGQHSvP38stbFXiDSwTmBNI=;
        b=HXEqBPB9KkdpSgbtU3FURcOIdWglcXxw5TwC4Sf/uUL3FNpqcc5+MHhuvpTuFFQNZN
         cr8amMwUUXGD1OO/c8K8mhzRzK88rFloeEaYo/ZQGQsYmiiiboHNgLb055y+rKut8dbM
         nCpMNp+N15d4k3bdkjezEKp6fB1UZ2Uu6ajRRnKH66+dcNF6aCacItgZBh4J7Q16WGf2
         7XIgOPpQpRXvYnmQwfVjg+BYT7wHlI/HWj5nkQZCtJKNL5ThpB+D45Q8Lp+KnHQCcu5l
         VgvAqyoNfvzRsfahDhUOMzlQECagQ4YVbsDxhZ7XZuaq+9b/n+w9Axv0gpoy5995J+Z5
         KM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993779; x=1786598579;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=3tvFFAh4lS3mG6cJ5ZjUOGQHSvP38stbFXiDSwTmBNI=;
        b=N7qIkax6LbG0ZbimhuVfjHPFgKPMELVf7lmId3i96K+oQjcgiLs3EZ1YizhWIkSi0y
         knfTIfFtx5LmI3lMunDLJWmqsvPUzIO+riNtL8b3v1MhoSrtTCcryE9Qw0V5HVfcn3On
         R9MIWjwYkfkCiSFINYtuIpY1z8Evurl45szxnPJXz5tOZvN7TcQLR1h9lWWXitCFhifO
         Tro3A9Jm6IKpruhxdxs3H9RoAWXWUKKdPgahYctHIsP9rEbF2v9R9JTNAaZ/CmCSnonY
         kbxmSdn8ULEIWE87UboKsHUHCEmD42tQUdyfN9F7oWrQThjX6IK+gg0xi+E5J/fGt/te
         6SkA==
X-Forwarded-Encrypted: i=1; AHgh+RrDxMwFLSioJ4KiCPBNpUgoj/kISsaiiYVHnMkwDg3b3/uk3S+nRu0xk4TlntpE5+7d48GK8To/Hlh3SvhbXA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7bOWKJqipc61mtHtgJUbAwowH5KW5bwArtxbZS9OPu0wUctd3
	rOj0sD1XuFPkLy61NZUDJMg9LSjWs9XasfT77x+B5wDAVIe+A9l/2izGbdZvfQ==
X-Gm-Gg: AR+sD11aEZsCad6dP6BHujzSG7BbAGdpenLi1eO5ASqis5fhdmB44zAqCh1vnaoQ9Ny
	dluQG3Em3EgQx/9rIZSelk5tu6jF3Sm+eslgUF+EMHsn8+xLIux9GknhhX026wGa/SHU1YhjZvv
	AAX3aVFq9lJaHxqIjsed1Bi8ga+/XxexiybXQEUDqCSAhToWuYoS4ea8QKnfLg+H8nJFvc3cNwt
	BKBecgsym4QcwaR9IzfIWkEF7m5+A4BWMCa6FR/Gi3I98QcwSRiBXAFAOGGjomyyRgW7HPyQFBb
	0DvKaVa87E11XCHPec6mJUCCNO+cLn2WwQca7zp1fjNxuX4rzupGC2hax7lCLeoleL9/w9HeYxs
	FdfFGNlcOyuOqXqj26E0GYLUk8lKs+pSp6xdKQL7NrWfb9NtBRkDm2cDXUBeBo+Vw70RKH3A/Is
	oONAalcsOVuKgLlWRCbm9dt++kUxO/yJTTiHAI8EWKAMMfvbiR0zLHXsiVb8g56XdikbHCwERO4
	S12ooX8wUHx9YP21xxJzW15ra/dDQhqtXnKFiA3e6vUVxPVt4V/miitS6AafoG3WAYheSuXjD+e
	usOD
X-Received: by 2002:a05:6a00:1310:b0:848:8027:cac with SMTP id d2e1a72fcca58-84f2e04d03fmr13506845b3a.23.1785993778592;
        Wed, 05 Aug 2026 22:22:58 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:58 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 11/14] ASoC: rockchip: rockchip_sai: Propagate -EPROBE_DEFER from IRQ lookup
Date: Thu,  6 Aug 2026 12:21:33 +0700
Message-ID: <20260806052136.21034-12-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222259_310349_AF9F315D 
X-CRM114-Status: GOOD (  11.23  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Return -EPROBE_DEFER from platform_get_irq_optional() so the driver is
re-probed when the interrupt resource becomes available instead of
continuing probe without an IRQ.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_sai.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 585e89f61f0d..522b4f4f6a7a 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1428,6 +1428,8 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 				     "Failed to initialize regmap\n");
 
 	irq = platform_get_irq_optional(pdev, 0);
+	if (irq == -EPROBE_DEFER)
+		return irq;
 	if (irq > 0) {
 		ret = devm_request_irq(&pdev->dev, irq, rockchip_sai_isr,
 				       IRQF_SHARED, node->name, sai);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
