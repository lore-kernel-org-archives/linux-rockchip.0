Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F78606A339
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tRhU+ma9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=YJtw2sHj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Pu/uiUHPCrxTssLzpa1klXYfIDoG9uOhqI3OViKYvJ8=; b=tRhU+ma9a9qdw94Re0AJ0oByp5
	WePKaDkkWIoDec2t2ptUkJfA3IRYi2qi+ZIi0AI7qxGH4Bs5tw0Vkzd1Qc/Pa3g6HpD8qbo8y9hgb
	x/c0CVUt/ScYCPHQK0JO+a9oOD0RCfs98y6FPhbzC9y/WLATE6AA5LB3vsrt2Sijtk6+ifTz2Oxb+
	yaTW9KxCmVQ7l7rIvCx18XAQYPXP2KU9JTJYRuEfWnpNKVVUnpWs3TT8Ok7sOoiSZedy6woJpmsZ6
	wMZB8ytXKyT8jlqRHTMlEbuWFVMlPSQOZ1yIjNDpF9qmNyya8mMslli913dT9+DyTNro1TNWk4Y9e
	ePJzx5nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzL-00000006ZLO-1zFt;
	Tue, 17 Nov 2026 17:28:59 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTMzA-00000006ZD7-3LPO
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 17:28:54 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-4adf4431ca0so16701fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 09:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794936528; x=1795541328; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W7aGstgLUF6fF7qIgrzP8vyvffLZGpRnglxzQ7CGySs=;
        b=YJtw2sHjARt9CKvE0R7OvpUD69Ni9Zl4OFC/HNurbZmHXgBOlFdgVr+OFvSH50PTs0
         MPvGb5C7wJPnbpMssTrJP3Fd627ecrNa1ffUzirRk26VzZeo728A40UF8ULxBPwuuo9n
         j6MvRsJv7v72Hn+fHUde3T4ogbF8yXionizrQfkGhGXJCZhj87K8H9pg5VmFOoD4jfF9
         O+QT13xvIEc6WkIueOQHHYdOy3Tw/OVDefD1cTdEbev1vKZ3m6+wlAGKZDDKHKafIJRL
         4QjdBSq50VMRZO+JmhRPp/bh245AoqjZugTyIWEO2BEPlEt+ysWiWKlygUjl2hnmYwtG
         mAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794936528; x=1795541328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=W7aGstgLUF6fF7qIgrzP8vyvffLZGpRnglxzQ7CGySs=;
        b=PspxqRY4sqXN4LWVkUrHScr8GUtq4X0sRbs43x0bVLvtfQGCb4gIVpNBQi1ZRNC/2z
         MuxXLno3z25resEpL4npAy763uVNfNNUTY4kLg5yc3SFtg83Tch3YDrwXs6aiwSmgcMy
         2+a65KBpmzSkqsl2cutIsca5fyPG/iBiRyj+RgtP8Jm0ZCTtyTcTubkWu5XqDtdH2RkG
         W8UwEn2UW3adrCNFlnRogMi2IYHR1KCcHG7vyBT9YJA8ouDSvcg4B+ix8+j0eHBxQnpo
         oAb16d1qnFizBDZ6c46DVwdvO/lknqZTkm0NgVBgJW5ZOzOvEaO02uwgBpMO/StpGTmn
         W9ZQ==
X-Gm-Message-State: APuU4Z+8k2gsroCxflfpRPp5A0JfRiwdTN/ojepKVccBCplsVzw6EAxt
	J0f3Bhfds/pIvzQngIbtbwSC3oiyBBwoBcymLxzV6dPtif5EHp1zgbVAqCi/WBoD
X-Gm-Gg: AYBFou07HaNCWH3kqRIAd2ncpDeAGi8V7sdHQQNDGr/6YzuQJFvPp52AEoGxzhkBxSV
	0korhttGVu7FVT8YXN0ZrOvLZHQU3kURCGs3VA6LTt3hWaEIP2MuW7Z3b26F5ftAmK1zfRLWhj7
	YcmimI+vCljTTFczadMy+hSe6wMGWavNjp0PtByfk4MHQgYHpcA5E5b3AiObgIMWV+XK/bpe7tA
	OzdmZDNvZANl0e814bIEV+r/bV4uLmyXYZ6Bnz5PcxrhJCphQnY7NTSL9XvFLN/HGLu2U8Q8eIa
	dYfHviZvzekaUWl1hLyi/WhpPd2cSW3g+z5m/EfzFAWD9YP4wbqHQeEbw1ZQtL5eEsX97c/SVe3
	WTeb5QNfLXseXurqnQt2cvfUSa/mdZcDhZLnVnVeRAkskpdXu+NouZuxUyzYS64bTqfWNtGhzuF
	t9aZfpauKARTx9pF/XusG9+zY0DyCENM8sqoYRwJh+iPsPuW09EZxtbuYaw/V9KTc2J2iKAygd5
	eHFylijXOyuzbVa8POaKohlHRW0kVq6sidhPLShjf2rMVoq2exrL0WMANSkh8ZENDVPjeAdAWV0
	WfnKDap9AKdwlcqibqFIeVHLCL+vEA==
X-Received: by 2002:a05:6871:2e87:b0:491:88f1:f3aa with SMTP id 586e51a60fabf-4afdf3ea53dmr11909331fac.26.1794936527583;
        Tue, 17 Nov 2026 09:28:47 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4b70d5b1c64sm148358fac.14.2026.11.17.09.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 09:28:47 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	shawn.lin@rock-chips.com,
	diederik@cknow-tech.com,
	michael.riesch@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	daniel.lezcano@kernel.org,
	tglx@kernel.org,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	david@ixit.cz,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V2 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Tue, 17 Nov 2026 11:28:41 -0600
Message-ID: <20261117172842.65346-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261117172842.65346-1-macroalpha82@gmail.com>
References: <20261117172842.65346-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_092849_094777_A0BEA3BE 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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

Add compatible string for Rockchip RK3568 timer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 6d0eb0014eee..b245a3051d66 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
               - rockchip,rk3368-timer
+              - rockchip,rk3568-timer
               - rockchip,rk3576-timer
               - rockchip,rk3588-timer
               - rockchip,px30-timer
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
