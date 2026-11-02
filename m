Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8285B606EE81
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 14:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HFuxeyz5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lr5742RP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LIaU84F96U+5CMj92iA7ENEgI0FFoJbDWjwelbZlgfA=; b=HFuxeyz5sna9zF9kpNO7mI7ot5
	TqVO9rYDoMFJA3Bw6Ds57TwJeseP9tPWhLaJX3d7KJ2heWhPQv98WNEo6bZpvXxZ3iQtdae4FvFci
	YPTF5xtQa3XMqtk2KiFAbAVcrB2zRbJnfurOz0JVhO8u/pAXovcRFhWsmn3iwdN2GJPSC5XDUt/Im
	LLWa4IGeU9o2XiepfoYetJ/NzQ3JPI0Ty5WvQDeszQ/INkXxgAC7+tn1mKx1E5vE4Bm/E4WCwY0kk
	B9zBRnT80F30aStLYDj+2fsRlPusPDTM0Hr3NMP6Gy5e07NBCYXMt6z6K+gBi8wndbdRZ3ywMb1V/
	Eivo04iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCU-0000000GrPq-366Z;
	Mon, 02 Nov 2026 14:39:54 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCQ-0000000GrMe-2Pda
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 14:39:52 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-6d68de53053so1458459eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 06:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793630390; x=1794235190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8yW9LSFgp1seAV1UAD5YKm8oGpU8G3ftKWOzpnzuWNw=;
        b=lr5742RPrMn/NxylD+3JsJcbvlCPX0ccp/e2ywZLoadtoDl13RtKv+YLIsRpYmKOe6
         i/MvEGXpRZt98O32NadRp52mrRabYJnpZMS46SHhzzVl5l94M9bRxxMlm900RnOjIHRD
         Tec5tfVxxVeMpYzs18iW6L2wcX06s6VlOoCizUeU4zBDQvFTPPvoOxG1sKiakqR/qr3X
         TKWA2Ste59xPQAm9DyDs/oOWTt3i70fdrQAKgaFk8noCDw9u0vjtJKN6qG+DbRTOHEEC
         TSSsXWsJnTLvvs/rEQ8458RH4kxIdk6amVrHRx0lRoPg3GxTmPUjugJiOiesS+ujtROO
         FUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793630390; x=1794235190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8yW9LSFgp1seAV1UAD5YKm8oGpU8G3ftKWOzpnzuWNw=;
        b=N8u4M31Cq+yCEjf9JQKb4p0mdguZRf7f3UAYpPurcVKnBW2+gxxOxQr/VEgOSe0lrr
         m1NBLsc26Lrd1eVee4NMickrIIxTsAFuqDY93q6l5KKFgdHYvVQPmNKc44hVEMclaJVu
         I+yDUeJo5wWlqV/9K0+cbbBp1epgHta+RxnGS4nS8811m95L174eAog9yVN8JHeRhSJi
         gAYMhDh/Llw/Q5igYYAM1aY911CUTMV5cM/ovHBfZOBQ5ZHXo4gkoBW4L5i2HCmJgs5u
         S7QWUW0Q93/HqgJ4VTGMivie6KJ9LmD+MUgprlZ7T9n1ssPTt+RXhAAClajDf2CQl/mY
         cM+A==
X-Gm-Message-State: AFq9FYLX672D4m/76jWstfZJzhTsCs8/Ei6lX25rE0HFgJBwBUfy4cUp
	1gKNiOBAqBZFA1KbUXENKEdsjWpWlNfZcb20gvZzXadtbG4drhGVooVE8nSFVh3u
X-Gm-Gg: AYBFou2hXNL7Sj7oUGZbWb/fSjC2ByhusKSGQrL2aIy8EPhGumkHMcCK8JES/3FN2mV
	VHXd6S7kSAjgLBRp6/JdI5nLentYsTHoVs1bJOszVjKpxxJAqi7khJbvg53vOmTk/t4QBkGRihc
	CkZRxMZFCjeE45glZ7dt79/g172m66axE4sAtdOULkkD89g3+w/XJk7tg0GpA2cy1dbbzLPP8Ke
	fx6PV5t4ipRSmKL+r3nTL5K9HgNH6jmGkb/+ngZvfBTMgKxnaiGzUCJ4hR66IDS2kZ2UTU9A41h
	jgoUyNvblil3Li7za96KksonZ+K0V4YmxOgW8wwMdf2h43iCDSTUaW2Q5EwehGUMkAIaqrNGKf4
	mASyD+Z7pSi+3LvzawGqf60yYtjuM7oDVPCMkIbB8e9bzrtXrhDycF26YYimNuClKwM3AyV7CZs
	K47bOd/h834+3iSxP1R15TAg2Ru/ucQx1DoRovx3rRBh3TrVscd+zsH3DP27eCGEESwK6BVE1Sy
	P6nHzw9f/gpS9LR5YLFDEaWzjZo/IyYXDklZpRIDKwF4jugWwqYvjFDxOH5QrMeg4GYv6p6Yuhl
	cP2r5wO6khvMtFGmer5LTY5oPgdI0K2w6GjgAbAYs6w9XuAdtKU=
X-Received: by 2002:a05:6820:810:b0:702:f890:e11b with SMTP id 006d021491bc7-714f28d7b7fmr5882947eaf.16.1793630389833;
        Mon, 02 Nov 2026 06:39:49 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85d3545b875sm9516327a34.5.2026.11.02.06.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:39:49 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 4/4] power: supply: rk817-charger: Clear full charge cal on resume
Date: Mon,  2 Nov 2026 08:39:42 -0600
Message-ID: <20261102143942.305293-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261102143942.305293-1-macroalpha82@gmail.com>
References: <20261102143942.305293-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_063950_622659_980DFA6D 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

After suspending, the coulumb counter may be off by a bit. Set the
cal_soc bit to 0 so that the gauge may be recalibrated again on a
full charge.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/power/supply/rk817_charger.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index d7d367211d5e..b88e7283ebfa 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1377,6 +1377,9 @@ static int __maybe_unused rk817_resume(struct device *dev)
 
 	struct rk817_charger *charger = dev_get_drvdata(dev);
 
+	/* try to recalibrate capacity if we hit full charge. */
+	charger->soc_cal = 0;
+
 	/* force an immediate update */
 	mod_delayed_work(system_percpu_wq, &charger->work, 0);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
