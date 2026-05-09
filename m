Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED33BCD37B6
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 19:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4INeISzKYlcRFOLIK5ntUGIUfOWsYfd0AtkL0XTr1FI=; b=Lw0qS8DsTESbAw
	Go+uqMuDP7mFN5P7+65d9+pXHoa5HgIjlo/i81EOpdF8yBxKUox7C/+CeFLeSzZQDu5ERVUYlWf6m
	RYdfBjPNMa+/x3qfZTrwpzHdeQFcU/csCxyvOXozLlBJIyboScdxuXh0KCkdLIBFMFKMiGVDrapZp
	3MK1UB8JWJf3lA6PP5nW4/r5ri8bvvO4LfszcB8gzjLfD5tky7UDS7aCr90BrOfW5kJgu1lC68bpy
	ELG63Kp1Sqrqv8tTP/x/mjUnrI5TxFDm6oAqEWWnUTi5B5Ki5ZML+7EPyUECUxRyNhbUUQnxuXTEt
	+PqNM0qGITABh6IpmLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnFA-00000009W2m-1RPs;
	Sat, 09 May 2026 19:21:44 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnF6-00000009W0w-1qZp
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 19:21:41 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7dd73b7c757so1640503a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2026 12:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778354498; x=1778959298; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A10z2V6mAiVce4BytYqy/qmrWiH198BizlsZzZUSoec=;
        b=iBm20oZXL4FTZZaADtzcZxeaQ1t5xidBKU7Yx45JFcZ2ITD9dCuqjmfJzi20dQIY+L
         hL77nBvQyf+x1uQIF3SNd0n70KyMvsQXU4r/VXC8A4C2DpRc1PaPAZLsVVmPyAykkh66
         s7SF8YCJcXb8+MwPnxUFX47xXgC3+KRs2p04sMvsj/P/p8fkR6HP+QyGCO2ymjpxN0In
         tmRWZhNaYE4aEMPbOFPj8UW62Fe+xiBsMWg+8Fy2lgLGlCiPHwputmAj7q2TEq4pc+pM
         sO5B86OGI9i94kKr9H6Pugz0evE5oqhTlnXMUFN1G+Pt9lRRaESIMbOj3VtweJSOw2d9
         lGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778354498; x=1778959298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A10z2V6mAiVce4BytYqy/qmrWiH198BizlsZzZUSoec=;
        b=FVy6YVCULnABwnJpmjzi1uM2LeupM1h0jSnlU4g/2QrQilHo7HdfsRmkl1ZF+OmYKe
         zmVbqyQLUeKkk+GA+SrgvKkVtgtITHWol9AdiuFSl0jqCQt7lSEG2Rv8NrPPlC0mcSjB
         Kj2s4XNr6zfLo9N4JEdrjPvh8y5Aq1039lUlexuqi5bAdBZ2ypXu/TvDAr0fSSHQInvY
         OlAVdIyuaowjCmFf+n9bLUYOtbFfa5cIxwFmHQ5aBnSnWKj8Vw4Yc2Z86WCg0Vz10Iz+
         Yxf3sNXJrBQVWGlqDi3ADg4oY5xDiwKuKf2SzBirI9CFgR0ZaZVcfPX14zdgqN11PdQX
         1L8g==
X-Forwarded-Encrypted: i=1; AFNElJ8El9y9ZmvFyxkOQYim80eM3H3F5R6Wg4+YJ4XDg8T387zn3mBcVJc7wvMrdV9EPspDAHGFWxf0rOtGeFOOkA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0BkEBT26frf/M63JgeV5Ftu3jFfRsriO686pW8JTQoSpo69Rm
	/5u18AxqWiCkCUDOexm/cQiHzWVtEmTbPkL2mMZ25YeLjaTyrII5mmiw
X-Gm-Gg: Acq92OEFGho8y1IhOY0Fq+C6nROMPcyuJTY1O0nk8+qS7VVjKlK05IQlmplp7oRIabO
	3vXdSFYpCFARNuXjxorXcjCiaya7ZPyNh6BmDlsxacSNzmCmTSodZ3ijsZ3+R5BozaZwLcuza4i
	SyOjz1IbQa+n3Sjd7kPpv7dGQiJtHvawP+uwqVabb448VbS4kHczSVOMcYhPjExYdbLwiGZPlnl
	LiH5zm7+zQSLzRNAkhXXNUIFgS8BB2Mm2Qu5QpZP916ZEEsIEX5ooo3iTiXIbji7xEW3hzOigOL
	Itv6jqQcefJ/LNdYb0oOcc0EZwjcl2hq6nYDK7IE9pCUTOZ1x9xlzPUT6a18BUsWjudU7p5AACm
	T0re9PZon7gbqUeITPze1rsgOtAuFj1MMee2KQq7dqF1aKiOrSLbBQ2+0mvApepzybhPptnLaFV
	z/xFrHaxNfMT5Az4kEbkip
X-Received: by 2002:a05:6820:60f:b0:696:1bf6:2674 with SMTP id 006d021491bc7-69b36d66941mr1897588eaf.40.1778354498305;
        Sat, 09 May 2026 12:21:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4355736f517sm5243896fac.12.2026.05.09.12.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 12:21:37 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 01/11] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Sat,  9 May 2026 14:18:55 -0500
Message-ID: <20260509191907.24734-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260509191907.24734-1-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_122140_496001_E1701D5B 
X-CRM114-Status: UNSURE (   9.01  )
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
