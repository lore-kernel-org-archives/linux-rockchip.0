Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DD98D11183
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 11:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plxCWWIdCDCs+r2tv7IqP3WHGK1+1Q9YAKqhnbpL/Rk=; b=CqG0Qdwmv+s0vo
	NIGBxOWcziII8BQIGU9uakVmuwwwtyfd0XcG5T4CZzw2ZoRJRs51ofJ+1kcpYOIHXwVkG1qpUbwmD
	gym6WRGeKBGVa5dmtiBUe+tyR/tUP90SCLypCwGvtIIXpJZXaZw8Y4RaUL95/avxVKuN+mTgaYIT3
	0Bbwj6E/94esVl/xGdwNoNo0LuueHoelO/m3ueBky3pDmkGi8bfLS1X9blii0BWOaP49A5ocnQQMX
	BcYNj8eG2ICOch41HLaKLAL1k4BNgvYG/q2ullUT4GY4IyvjeIR4n18G9mpbWEMMqoLeBRvdrB6Md
	ryxQx2rmL17idjAFYl1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaSO-0000000GTzN-2k8o;
	Thu, 27 Nov 2025 11:46:40 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaSM-0000000GTyj-14sc
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 11:46:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so8358965e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Nov 2025 03:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764243996; x=1764848796; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ahwfLc2OR0WyJJiUqyrz44j0I6pa73iQ662MFA3AWnQ=;
        b=CiSEarLicz/AMUvRytc1KzdUO3beBm5VWz4mPFRrPFt8tfC2qKbeTt5zrCsB/Rk4lv
         feKM2JLUm+ODgPe5gg8RxmTaMjjRWrNUJp8yPehx4pwsi3UXOhSPCqP6B/hdFChLyzuh
         TRN+51vFDL8tYnPbiK8mPY+c9do25esxTX2/8X8teA7YIjqRyyOR3eGx9J46VgI2Rd8w
         lwyr9+jFDuRu03Pq6+6wwUiHV01Yl3/4i6yIPVqwEtTnHzLf+jmeqrwwKYMMFhWZVYS8
         nNPmpobOiT+Ph1c6Y7rHiWO7XKMPKSb3H2K1UKvsEnV/mh9yTbpak/GSsaBoBtHrePK9
         Ba9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764243996; x=1764848796;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahwfLc2OR0WyJJiUqyrz44j0I6pa73iQ662MFA3AWnQ=;
        b=NGV7fp1XCFeOpdPZjCKuEmMk5D+4hybr0mrPjy7S7CnxLmAJVNkAv8nRCQGOJFAwtz
         1APKav6b/f+Hnn+fEiRVAg/qhf1rV+9JmL2/xObDJ6rBa5xyW1HG0HpXyNxUTF8wAGw7
         nLvjnujL8i3pKHEfBDqXXDDHnaKJqtfaj3UCmddUe0LVWQ1Vyu7E9MMwADxxIivF3kYZ
         mGRO5D9/6T3w4RxAUFWF/V5MsYKfVS9qHHIiEO29MSTdHhAggFBH7W09nafh7SSEfoTJ
         N4mRXCJbdMSdnFOumvM3TDnnZkSwOubR/8hcL4qCkH45bsXvoxyOOwdXjnrtzkWXekv7
         kNig==
X-Forwarded-Encrypted: i=1; AJvYcCVqRiZE/73sUoxRGOPbiwIwkE4G+fgmNPmlnM5X+5LX/mLAYSygHyQbpEOWy/8eVEc9esKRFMKY2bNPZlFdUg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqIRucJO2i3lvs1fd5lPlWde4hKlIRGfNZFNbZTIJR0wst1CwH
	Q0C3fZqoUMG6ptMjVlg8fjRICm9deer9u6uJt8+0G8DajOGIg56mq0OD
X-Gm-Gg: ASbGncvirWJOBfyMLruHJcs9IpVhCAPYiKS5zlE+RH6Tf5YT6lRmMChPMacU5mxbWwG
	bRZ3/ShBuVImy0kNnYwBuj8b21BqB0L/aC6usnfKdpBnk9gYqf5aRb4ksQZSsvj1ifQr6Gh4+XG
	pTHxu2f+hIhEP8s8q3F5fRHY+2bKyKTewQK8FmL7s2CgvqimBkKNshpbwhhbb2mtJYUTVmUjl5G
	g3Kp53tF6V52kkLFSZqUg6feYF5twp7rqSdfSD8aY3hG2mfwAyQJvW8YkzTjOXPeNJl/mLzTa6W
	WCaoGo/qHMSkPl7M5R8WUfNkDJhHvCHkuzfKsCuFOg3tdh3M3dZjfSJgP1En8AggxsJ679dcLrS
	iKbpoH2bTlrhfGoMGR0nEEh6xa3+pbKaA8YUL7rAGxrW2ThagxYU0Twu62WSw6dv3LbVtaRal2r
	Ir/TtGMNP7pkQVh2atCSGqh2yLdaKtvH/i21eAzyDanwJ0AtA+NRKwZIKnCOERzWw=
X-Google-Smtp-Source: AGHT+IFSDmImo8FEnvAge2+dTux+Ghzkun3vGhivmqn4fQ1ZLuGZNmj5Qn5XXFyek5kNknVA8eGNFA==
X-Received: by 2002:a05:600c:3541:b0:477:7991:5d1e with SMTP id 5b1f17b1804b1-47904b24871mr105857425e9.25.1764243995812;
        Thu, 27 Nov 2025 03:46:35 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1caa5d02sm3011816f8f.36.2025.11.27.03.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 03:46:35 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 27 Nov 2025 15:46:30 +0400
Subject: [PATCH] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
MIME-Version: 1.0
Message-Id: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
X-B4-Tracking: v=1; b=H4sIABU6KGkC/x3MQQqAIBBA0avIrBvQARO6SrSQGmsWqShFEN49a
 fkW/79QuQhXmNQLhW+pkmKHGRSsh487o2zdQJqsMeQw+piy4GnxChUtBVqtdtqMDnqTCwd5/t+
 8tPYBn6J8218AAAA=
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1011; i=alchark@gmail.com;
 h=from:subject:message-id; bh=36GSySHVmu4BNGGfVtnH9eM5F228bXeFUWmPc8A0OvE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRqWMmkHYu+dCJU8YVEUP5919+NCWHrLxRxTLv73y1Jd
 atm85GwjlIWBjEuBlkxRZa535bYTjXim7XLw+MrzBxWJpAhDFycAjCR5ScYGR7JR6pmmv73+eve
 o3HE++UfP9fe3v/JW67X2ZbP5jP+LcjwV7BBw+Wt50TuQPn/jhytlbNeu+7mndxR/FxUMTsu7ut
 pVgA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_034638_473386_7333069C 
X-CRM114-Status: UNSURE (   8.35  )
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

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node.

Board specific supply regulators are not added, because they are all
non-gateable descendants of other regulators marked always-on.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..6b8518c49835 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -906,6 +906,10 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: 663d0d1af3faefe673cabf4b6b077149a87ad71f
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
