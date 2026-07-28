Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4432C54F51
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 20:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=URJ5uKcmYTp24P
	YS0zlruMzZqGBilKsKhvd3kdq6nzkAHrwiC+w3o7Yt5t9bEZPiXn1x6Rvb1gzxq4BQ0VwztCbhzRY
	V3X5vdyyJ1h7+EnFZ2bHHC0FnOfK3M+X+PQaTAdP+E9503GuGv9WfQqSVz2/JoLre+i4w5SOtsUce
	6gALnYnvE2415aorSfb4ZN4EpzDclX+ss8hAK6jv/XrQzvTIyuWAInfuQYyJ7M3DgT6v0TcR8wAHy
	CSAHmo4sO7E4gsSoH8LHvWSUjnvPJ/x7xHgEaR8gWnm5PA+C6o8hoLQ46uxA6icy9dsbAzg+70bgE
	wITziYMUjDRPouiT4iqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobv-00000006ENs-0DZT;
	Tue, 28 Jul 2026 20:41:11 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobs-00000006EMe-3Cd4
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 20:41:10 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-49fa951b2c6so133934b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 13:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785271268; x=1785876068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=itEfxGVbBnuwWE43PSwrlVdWYmliZe0hp0lz9F0fH5NxFYD19ACn7snQNM865Uo7Ag
         8By8jgFmxaM5fQIONYbJbZHlow1z2oNj8+mWK5aBLwDrvFOlyvOWwHAmhAWVgUknKrAT
         IHNFmuDcPDe52vAsTRoPJ6P+M577AKJSccvtu2itxGs+Mg/5xlAL8+DcE01W2A+sOwGO
         l+k30W43vYj8zs3F/L4Rdj0uPIeSeOAxI9tmIoSKveqMLSogUdU87ijLnttvz3V/0JZU
         AyhiMcoHDv03wAc5w7H98kD+X6o1C+1PVVziCbWnV19HZC9gj87WDZxL69yKJM4Bznja
         MmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785271268; x=1785876068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=lmdwG5Z243wuiWfWAss0fyP+8NrA0YbP7MjZzL8780qXAfM5rXvGsE8kknyVaPQGno
         JBpRBt0SJ1382HKUwpykp2BDhnxcX5QUzmNc1fxih6+mm/vkEHhxLHWhrkx3SvDoGUwT
         KF0BPh2f8PknXWLyp0KLFvp0Mu89LnFklCW3/nNbLz2tsSc9Ff4B7HoH5sBsxzfCLbFU
         Zpzmw1n3MA/aCCg+3siu1+u1CWpmfkqXJSs695gVDkzLy0cKxE4zGydFpnYb8wlTuMFQ
         M89NLkYYAS6A375cLPmW4+FKrVE1MKz8aQBfO3EhnyGpGBacrkUfYpHJHn0Bqfxiw1ks
         Mw1A==
X-Gm-Message-State: AOJu0YxlWm9yD/NETnAwRXch5/hqGohIdbWXCxdFvr5mC05hl4HJ5iS3
	5WK15sXRt0lvTzPFiM4igSa9++K/bxM6t3haF4J3iIPPwWZlGMg6fSQRI8mpZA==
X-Gm-Gg: AR+sD11V2dEnQeIcIigVtP8EAadHkowvHDOV7Q4L9ZZSbOIbVcAga/4n+74iQthGLf+
	SglKkZf74p8oZF0XXsZsUMqmNOVeq3+g4OKsBd0+xgPL2sCOD2AKRIpVdbue3DAwqIS1RywyC3W
	6coSBYYj1PM4IjwVT+9npTKgl9GcowzK01xB8vyWrwKHNUe33WW3TqaS4+dY+rZKWajP59Kt1pS
	T5C6Gygdl8uF93ddAw4R6XSZDLXx2KRU4BGz0QBqqhCx3ztzYHvQlqbaXjFIN4jZBciMFeX4xfw
	uusEy+WoeB07/uoZxW33yoFUmoj9TzCGYL4RAYwL5WDAn+8ibfP6/3NfaMjXTPyU6olxz2ZG24n
	evSegLaj6EtDV5xMshlHyiwur56H+GZhJMARh2n6ADWYCQjp11HqnGabM+oDg5p1sgAMiKvWELX
	lQDIPqZJpM4e/vtO88dDLnRUPU40wC3L0vqc4rBeKc0fL5vhRKt7i/Tm9+BrKq2MvR7LCnlPWyx
	98eSJK3
X-Received: by 2002:a05:6808:ec6:b0:497:d3d6:6a56 with SMTP id 5614622812f47-4ad5b44735emr2359380b6e.0.1785271267733;
        Tue, 28 Jul 2026 13:41:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6efc5c3fsm129884b6e.13.2026.07.28.13.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 13:41:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V10 3/4] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Tue, 28 Jul 2026 15:38:31 -0500
Message-ID: <20260728203832.166402-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728203832.166402-1-macroalpha82@gmail.com>
References: <20260728203832.166402-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_134108_807849_F2CCEEEC 
X-CRM114-Status: UNSURE (   8.52  )
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
