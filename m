Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F271C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 22:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYiaS97Z5nqpipHSn1Qqf6nlJ4oziY5EqUQKFeQQlrM=; b=lWmh3ninoD7J95
	w9pHRCYRmFjTtdWLdaUgwUQLNO9MdYofZzbRdybIdCnNPwFF/rRAwETxfxZDLq2gEy6SeFZQfvpmX
	SuP7EYIyaTlcAZGo2MPzUxBbzCyvuVAULN10FptyGRzcG2SxojwX7AgAB/FqdjYENe8/VTi01ReqE
	J+xec0d78+CeHq6PqX7NcwfTGHdztxmoZRRn+/CrrNmXUtet3Odu0m5r3Xek8VEMs7ijMf+2IpeYr
	hw9wXvRYNthR5dahCwf5HC6obf92SAG5iUsC1IlFxixGNlQIHqZVj39SeWAORYv0LNXlFq824N0TR
	wQ7ykgdWqOR2LJusJ1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP9E-0000000EFWF-2tYg;
	Wed, 28 May 2025 22:21:20 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKP6V-0000000EF83-1CGZ
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 22:18:34 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so171308b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 15:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748470710; x=1749075510; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFnbU5QXcdkuEFTVcbp9QzArdDzsF7X3YeB+RC12hro=;
        b=Jv5dK9W3hk015V7bGNnUVLgtCnWZosiSVrE437forG/y4PzXIC8VzU2vBbL6GETcT/
         ClgEOAYWDdvYIyuK+mL2B3F8TdlxGGiJnymV9utuWF2GayJgmCVurRqyLfaA0sBF5/Sy
         rnmPQua5Re3HXFPwYN2o+cbmRUsQLbzmL0I7VeM1q43rFxR2N1aNx1Bc5UH9hzcp5j1o
         IqZh3pPlDR0CWx3SXLT5UgAzdr65rLotvOj1Y8zl65JTitYbK17zQTgve4awVKdMh/CU
         p4aEYZ4z90mvbsGl67GDG+Zmu5Gp1a1Vp8xlHf8Eo5uzdgy9Cx6YmP9ZUVl2o+nO7Nut
         pmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748470710; x=1749075510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nFnbU5QXcdkuEFTVcbp9QzArdDzsF7X3YeB+RC12hro=;
        b=VLdOqeydDD5j2sUvo6fpMN/jdlQQcepQaFpvQMIoSZFy1EpW8I2rOsbrN+HqOfv8fJ
         H3g5CzttbYbPkBI2E5hjFsHdXIlUd0pvIcbavNqZcOXW9xnEm+zMZCSc9x2rTxbPucW1
         ZsPn0FBdOuBBJw+bYeVQybXhIqkEEHqURd8zN47ffaAb2Qy4KEaefpnboaXS/gBHRcOI
         lUywpO1d2XKl48jTcraLqizRv8uPhJw7aV7gxM5yTo5m22t0Y0EIDNIuGGwX09sd0xzu
         sxQVuCKkCUZjYfcT1O88e4+7EyyUlG/7xcrns5E+Fy/ctFW6QCeuyh+nTV2xQ5qvwj2B
         sTBw==
X-Forwarded-Encrypted: i=1; AJvYcCVjff90FABWrQlUt0mrkETGEF8tKJJIy8EHOy2xFCS5pk1AZjMFp5exYvoW8RypnAzmkTJLo0L6EDXycJRH9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ9JRgBkLFx1LPj/2gAHGJsb3Cm8ruVTbU+YSZEvCjBns8OPvM
	18lPuUxfcd7CwfCEVdkkTxqP9UGYaFftd/LVvOouWW196odjfKEgrqJW
X-Gm-Gg: ASbGncuc25afk/hzZ9KMBjqe9yr7gGXnWDmRs1NgThD6UFeNFxhlv3Gih4aZPLTpNaT
	4IuoWMZ64ePWzplQHD4wBNKL+9RYKyYMuKJgJX5Tif0HlBCSv5pj9SvjvZ0jk/IGlDmh3xpbZwu
	Gq1Pgn0ynHzygWNBk/OdBMf0eVoypR4/dBifyn7etqt/HJCgtCVS5LBTz2+UANHV16hFK7eGyKS
	sOCTHk/noy/Cj8wVSTxjRXF/dLL0J0HzDItQYKzwX9BEDghvcsF/tZ6zvoFtfuZbyE9/HXfdS8M
	tWzCsBnXZA9rHTeKLR2yusmjxQLOtul7UUk1FdiImbG4Ri7cpuEo0o7aE2AfwpEPDQ==
X-Google-Smtp-Source: AGHT+IF/QBsGDlB+6OdpCjsobsk71nuMEkAKwOKFrNErsZYH9vawpaENRQkYB19VKbYkltGSxArE+g==
X-Received: by 2002:a05:6a21:6e41:b0:215:efed:acfc with SMTP id adf61e73a8af0-2188c191795mr32428647637.7.1748470709827;
        Wed, 28 May 2025 15:18:29 -0700 (PDT)
Received: from localhost.localdomain ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afff71fbsm81015b3a.165.2025.05.28.15.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 15:18:29 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Steve deRosier <derosier@cal-sierra.com>,
	Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v3 0/3] Add Radxa CM5 module and IO board dts
Date: Wed, 28 May 2025 15:18:20 -0700
Message-ID: <20250528221823.2974653-1-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <174735136138.1544989.11909422896170025756.robh@kernel.org>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_151831_324676_4CCC5DBA 
X-CRM114-Status: GOOD (  12.40  )
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

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

V2 -> V3:
  - Addressed YAML syntax error in dt binding (per Rob)
  - Fixed whitespace issue in dts reported by checkpatch.pl
  - Split base SoM and carrier board into separate patches
  - Added further details about the SoM and carrier to the commit
    messages

V1 -> V2:
  - Added copyright header and data sheet links
  - Removed non-existent property
  - Sorted alphabetically
  - Removed errant whitespace
  - Moved status to the end of each node
  - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
  - Removed delays from gmac with internal delay

Joseph Kogut (3):
  dt-bindings: arm: rockchip: Add Radxa CM5 IO board
  arm64: dts: rockchip: Add rk3588 based Radxa CM5
  arm64: dts: rockchip: Add support for CM5 IO carrier

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 454 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 156 ++++++
 4 files changed, 618 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
