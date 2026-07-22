Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAAAC44536
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 15:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=AlsQWj9YUVgl6M
	4wwuTYKsbSFexEWdzoyl9F5xEUfSbyvbYZ0m2IqS++/HdKjQkcKkGcNr1AsdqZTIi6fvy9+dEHDP/
	l/Xj/xYxc+zOsT7nPMz5cYW+KCpmXeacxTNAXzTrwevsizl61CM9Nq9XYDVBfW6NEyTxB5tcHKfmr
	CktksGyiUTuIkkv+bsyyMvkbSCXET+L7TosoXYt67iMui+9MdEGwuS1ElBlKskN4tuqIsFTc+/vu5
	56ZHIjCT2B6Ms1nt89SJ9JqLlmk5/M9ngtEuEEZkloah2LtImM2HYJ2cXlq4qt6ZGOXkVTUbxz7wk
	lP8D/pQHD96qVkJIItEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5J-0000000CDOQ-08Xu;
	Wed, 22 Jul 2026 15:42:13 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5H-0000000CDNh-1FAx
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 15:42:12 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7e6128bd9b3so6324658a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 08:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734930; x=1785339730; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=Dczvc/kXctgDpULkfTi/F+UOGrVYVopzU/SdCxdMcC3tmEw+q4RUykrw4TVZjXZ/o9
         sXa8ix4QUfbCOcJaIcWAbz89B5DWNV2xMbAlnS5pr0sv1AXVYGLV2Kbtp6fzGVPCYayd
         Ym2EzGenx7HJD2ejch6WVfryCrVxVFtaRWxBRIBkGNrKrsiHBDzqshIAk0pv9N+vqO0l
         j0saywosDAAvkZp5ryh/MKy75MNUVf19yyZf2EwWETw86xC5yR4Mme+RC7YeCXx/gEIb
         cONyWCyNYRXSOALDY1gvZXaQW7BjjvAJXQBZYs8Gli/f4p+oeGs2tx/oIE6qkIvqGEH8
         55YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734930; x=1785339730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=GdpcvXVE81qW8l/Jy43lUjW4yTK6fBUua00Ug2r7ddJKHPBsnda/mMRyiw2H0mvFLq
         bTlB3P8eWzru/Ej4ewnUGQN5SPEyFA8rxJwVNlbR2LyT71+XB8CJPamwWc6+bL7qLS8s
         rLNViM7jQPGU+70d0WUaAlYUSdxzq5neTMrG8UKGq1RmV8PPlxiz6569EE/abCzaSD8e
         IIszNkYW67ZIDKMg48GMSuSXpwckGbt+KmrbaXn3ANNmdpfINWrv4yfyUSTwfrKa5g++
         qp9hrdmo4CmdTkn5XDa+xpTTfyfJ5hqWUbOXQZXl3ALDeuFhEOvYEf0fszhwlkt62nZV
         Cm1A==
X-Forwarded-Encrypted: i=1; AHgh+RoKGZS5XbgrYUKMis/54C3PVQugmkhYEGHy20ZdVbJHy1h8yqZJ6oJVOA5tFQYWQeHLxBwo2cck+iNDWa2Q6w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqJfUGsR699dvO1tEhamBiclpozbElMOmVVuX+bJgTXi8k7I3G
	HSBDRSfXtc0GCC2/XwDkYHanOfhGEE0iitMuKWlDAD/mRVnhtUqef7Uo
X-Gm-Gg: AR+sD125+gvdbq8nwwpEl5LKIti2dAv0IWSx+VsSzliA5qP8aWXxmNAEeWdARLhXTVs
	NlCORRyCLCEoAqGvpXgnLCKViB4l+WgUC0UUdL3wVvSA2jSWOO58TV6du+BQp1UYz++OtC39c4k
	+nMZwDlvivBRCQEDrso2edOuXfOdLCP7hRyCMuqyapDQ5nMmPOmwo+bUPCfO3ObfWsFqszN9dkq
	ARMkV4CRQfjhVT56ucdvBJICEoU5+53ZcDHf0Tf2Mn8eMDpm8NYZHPGQ20hzQ14jSgbABqH2PhL
	4wcmmCan33mj+Ulk3Bf6XKEY8fMtyN+4vJH8Ni3VcU5fZa+Ljhubd92/IQe5GeaQVn2v0teH3ie
	oZA/tTc38iQ3DJFiaAf+X50Eplx9CO2/ccP+b9rGs3oxTyyFoa4s6kLujgfr6I84o6gnuUfJtFU
	t+1RmShedNHW8=
X-Received: by 2002:a05:6820:4b87:b0:6a3:14f3:3cd8 with SMTP id 006d021491bc7-6a53687c6e5mr11326683eaf.52.1784734929965;
        Wed, 22 Jul 2026 08:42:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aac3a494d4sm1300804eaf.3.2026.07.22.08.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 08:42:08 -0700 (PDT)
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
Subject: [PATCH V19 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Wed, 22 Jul 2026 10:39:32 -0500
Message-ID: <20260722153942.144387-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722153942.144387-1-macroalpha82@gmail.com>
References: <20260722153942.144387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_084211_330134_5104EE82 
X-CRM114-Status: UNSURE (   8.58  )
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
