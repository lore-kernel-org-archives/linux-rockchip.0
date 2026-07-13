Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F23C4450A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 22:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=j+/h9Q8lrfEKh3
	RdxZ4DoSLRUlPe2zlFLzg5VSAdu/e0UJxBW4wjyj2MrU94PMBjDQm91a6j3DQMp0Np+w99wG0obGd
	HzPw4/N4Eu2RT4B8V/P0b2jqgIPS2ZSiMgoN2WV1vyR6YNqNyZYhftoOlljOlEq6NXU6lU7eSiT7m
	Ls1U2c7CyjqFe0hjL9Fl8Hs7FcJyEgSGaRD4qATZ8o/rG0+e0Igx8cNkQC32kTUonnMr6unIYhjWi
	VmwwoENYYMF2o8+leHO7FRWTT/4FIvAT7ktYLHKf2Z7GLFTmJT86cOJ6n2LCwphXoyd+8DX2oskkB
	JYmC14pSgk4llNZv7hRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOiD-0000000ATyj-1bfQ;
	Mon, 13 Jul 2026 22:01:17 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOi7-0000000ATv9-23yr
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 22:01:13 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-448cf99c133so224654fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 15:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783980066; x=1784584866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=mVqBP8PCLCXgvxtXSmuE/2UdRo78xlKm022ZiwuSO+TUbnBPYbiqYJgwZkd/CchZ06
         FhjOr/ra7eJl7QlM16tWhC0zV3ogI0A9rXSyvgc+AvRnbbMraBaz3VX+g0UOO/DAE3+Z
         suQmaIh1pww4Zpyu0ABm1W3TwGaTQIobIb85SBi09FCCx3wSpkoG6Rf1irqHMwBSV5lF
         wYXf3PIchgVHRjpQ8sPZF4wGyLaByTL8KM/IDnmDdotpmfi7/DkMo6ubhrg0PtaBQqQ4
         Gn/0JD5Z81UPcAdUplQ6DIfrbFsT4oA8uFLyzDG1vQnV/8VC5fYTh189Y0d4ATQN82I9
         1pJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783980066; x=1784584866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=VI/jfWxnclUe2ZmXuPYCAfg6HNrjjVHZ9fsOzyYr7lrJ5JfzgsusiL7Sfp7unflV+z
         m1v4rUThdF5Q5BQ6Yn4A06zPVGJNv+bI11sAH1+UBif35z/eQO2ESsardwp8/TkVvctW
         tVgsBfP/pgVahvOPohw7AMjR0ZYEk8Gl479EDm+bQlLlMgrwVfmWmoPIUY8Z8Y/OkGIV
         NLRUdRjvZzyl+jcm2hDhx7e8qQdCTaaoH6wi9LfBYervX2FE1ZXuAhpiIEZHLYJYegkQ
         TfC2ML+x/SV+Z9ioaJkvMusDxWTIwNIPoGLup6sIcG+iHNex7UIFwrrDta7IGI4CJffQ
         tifw==
X-Forwarded-Encrypted: i=1; AFNElJ8h5n8gXGV9jO3fqBe1p6z0zK1xTriX4KEG+inQLPYuDy+fnzNf4aSmrIR8Z+XOtyhbofSTAChF3zDHFfmeTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwSETK6vQES/5ZiskoZKyS+CYtK5QfwKmNEamyfk2lMzeAzx5sP
	M1FtV4QTGV/JQw5SqJhcFRODhzRDmPohQ4/Z/Ll0XfOtmX0zmnXWijku
X-Gm-Gg: AfdE7cm451vrtwGJ/A0bGnn3ktkRyHuQ4iU1BwFFJXFWWq+0lvbTflFrD7eV6bmcFzh
	RtLNb63z2RYl9bRBy2+9iR7QMUZSznB2uxfLS/YQQDi9u8TzpmMzxJsM6+0L4zXVUBAvnlmJ40R
	EYrWlS5JvpwmrofmNlsJCVGiBTvtW4J+2scBWO40uGGOd5X84/t1ky2CPdpEJWPMU0NzaHE2dXu
	DBulRtCK5lJq+GkbUoSDUaJAA8+0fl1OSsyzJxT4AfEgPJW3UPXinO5jMKLwq79Bw2LwLl86K3I
	07Jd0stQxK/DoDlkc9y45HbPA7hPMbuzBVrvvVvMTj/xoUHrD3MdJhZ2GI5A5edCv9v/v1MtJup
	IbHL7RPVzs3cvs4vT0B8LqcMCXoi8ti6feO8gTe3Ekx9APOrIybRcL0H5yBAfvm7ioIA9d0Zl8+
	VoMbKSTOoFTe0=
X-Received: by 2002:a05:6808:bc2:b0:497:cfda:3c0f with SMTP id 5614622812f47-4a40f048b13mr10541643b6e.29.1783980066006;
        Mon, 13 Jul 2026 15:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm12939785b6e.3.2026.07.13.15.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:01:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v16 01/10] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Mon, 13 Jul 2026 16:58:31 -0500
Message-ID: <20260713215842.69097-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713215842.69097-1-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_150111_547703_02609431 
X-CRM114-Status: UNSURE (   8.26  )
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

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
