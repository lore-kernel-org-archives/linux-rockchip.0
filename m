Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86920CD98CF
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=VUiqOX+mSUws6A
	PpTfBRXAcJlnzEuJkQuVai6FeYtgTI4yndanIHUrtMmbMN6usJ3t1NbPLSZvr+IiBQ9TUd48Y0oB3
	bJ37Tyk0qKZGqCeiamFtIq/hFlv+vJfJ1HeSVBUN2LkzefKxelTobjoNxpRiC61MvhsYRWBfC2DfR
	vEcuu7jlV63UUZvTsfKzOsWrnGy6RRNsDZAZrcB3jrbUKW82mkcTcpqnMyHv37KzVgJEmfPzx1HaP
	4zPkqKJwQacUbKpUh/F5iy4DhisMZ1Z/ygnjt6mRfIcni3pPS8RHJkWgJQbew7/GvoN7yMvCoJQ2Y
	GlQhvOKErcNcLnynZUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCX-00000007whM-1en4;
	Wed, 10 Jun 2026 14:46:41 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCT-00000007wdb-3Cwd
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 14:46:38 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e6f586a0d5so3422665a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 07:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781102797; x=1781707597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=Su5uSO9d4w49hI/PQX6IY0HHvnqJQBTwRR6HvVDgkVDEQUvYe7QwnW+8aBu6qJ+ObT
         OUOD7o7IBcrhLllxudh++6jHKMZjIdBQcPQ6sJ3DayxTyiLMmEEPB+c8Wzqw9dYBaVs0
         SpQcffc0gnMQ+b6NsyVel0ksRsfSbR3gZnYkeuw04nM5v5HHllnv0kJunwpu+k0oFucR
         66WAHZM3NUPSzym/9PY9vuqrik72Rqw8mKGPG4LE8hlaYEccDSTzZS5qSK0bc1NBOmdX
         kBLMI/911pInxeE9buXC1/bGV9i4RxTJv+xQxiiQgT05em7ehHFKnq7Q52pA007smMzj
         tBMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781102797; x=1781707597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=serHwTs8st3yDA8WaCjZH8sVO1OhIw3+Wlwd+0+1ZFefbMw00o3SpzWdawSmoycahr
         U/m4TMy4/wqpQogJa0c4/s9YZ9NfNe+DPSBHQJ0hNMiNnhAUTWd/ghdBaqe8gJ4PvvZm
         oHnpsDNTibBW52GUSmydrPZCoxGDFdt73Y7MD7jZ32qBxSAYoTLJkbhDYijBn4XKrhh9
         pT1JAxvblRLXWGNLkwT5BOHMaCghdRqAIwEVutcGTon5qKY2HyzHh+19dh6GZ1w1l/D3
         lpozI8Tfm1m2QQ9d36glqxSvaqv78ygMhtSTWQmNFN4B5gvQTob/N8UlLTDv1C1mQ+xJ
         vsjw==
X-Gm-Message-State: AOJu0YyYZQ/aSTc5eZRmlWLwr7IMEqZkHU2VR31kTPXr8RT45EJHxw6e
	MhVsMZtBAzwi0PtfeVLl4ULA7om9IlaUa/CpcEcNSatzMbITjkHMeYc6gy/Ccg==
X-Gm-Gg: Acq92OErDYIlBk5xP9LTp1Li4j+QtAhSdoGKpwBjFtQoC6dpoFGicMjxN5YphmXR3Q5
	tjMrCYY1M5rvlEy277VwjqlO5YE5TQRlpcASP82ASuJhyETa2FAxi9bIFpSPOkggmzS6bnr6e6O
	RivVrLchxrgigE0ayAvPSzRhRrT68O1SrnmZA7G9cBZGFaJaeoNXhNrUhHnhPTOtzQhrhg0gQiY
	sABqTsDjzFHokjhH3QN3hoc51RISAYfA1h8QJrHY2ost+kE04FQ6RdrvzYL2AFJTYJU8M9cVQUC
	H2SVqwOqEwqVZ8RcVKTkm1TxFzKXP2oDGJqPk45T4n1ibN5bwGbeb6cJPd09NkFWabJl4nwS3z1
	6/vA6ttjCh3vixY+J9wT7c+8YhF1bAWhgVlMloUBfghbdvYBK0zffSdBiSGtjecFOSlvJXDZtvH
	dND02lOpFRnO3uD1rbvaiZF2p9VWfLoSY=
X-Received: by 2002:a4a:e915:0:b0:69e:97bf:4756 with SMTP id 006d021491bc7-69e97bf49acmr7928021eaf.7.1781102796725;
        Wed, 10 Jun 2026 07:46:36 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e4644ddc2sm12069165eaf.12.2026.06.10.07.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 07:46:36 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V7 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Wed, 10 Jun 2026 09:44:06 -0500
Message-ID: <20260610144407.438846-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610144407.438846-1-macroalpha82@gmail.com>
References: <20260610144407.438846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_074637_806750_BC0D5E60 
X-CRM114-Status: UNSURE (   8.27  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
