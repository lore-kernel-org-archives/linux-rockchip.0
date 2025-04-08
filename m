Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47466C3600C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 05:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sODy117PDq+pA0PHdb8dRD19UoxngAGvdVGijU+B2DA=; b=cCnHvK0ypEJOwP
	y1V/N9TSjgG2fdMbDSQP1hvTqh4B4/SoRa2/tC9QWT5vwiwdBMJYrxAi1ciIqycabDNwWWmWbTkPF
	fw2b0oVx5APvJDJleciKkrc3d5RWaFfKnn/05VHk8ndBnj8eUESkKs+lsOtxB6GppckhBnZovEgSZ
	5sej0XyId369KDVCCse2s7dQJpPi/9jhQPxh4Idet30HDMhtGmsF+ATo20pn4uSNwRjDLA/ClQP0p
	1yHo6Maao0pELdSyYtGrDW3UUeCvXSnBKr2IQpCOIbTXlYrcNqk2F8/H6LsMcvrgMopBDtu/ZYL9/
	oeac2okl/OTprt8rGf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21zM-00000002pSz-07vr;
	Tue, 08 Apr 2025 05:59:12 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u21xZ-00000002pD0-2Uft
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 05:57:22 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3011737dda0so3804160a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Apr 2025 22:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744091841; x=1744696641; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ntWAqYw/FbTf3Hq91IVHWRfD1c0otTEdS+CQ7J427hE=;
        b=vnl9bLzttUyq4vUKC12DPjrZN9M3f2YwuTNQhCKsrASenvp4GM8O+Nm72lrm7uhekZ
         N1KgR8e2sT5FQY998Y2DG6Wm/+DsQdffFuhJmxq43iyDct/kDkL7R9vJKxLe+VXtE5Pv
         wEDQp1Q1YFxzPnBrtMbDbxFQGQQrRRHTLKUZY8I2De/1HP8DBtGTNj3CKy9j/1Sndv2b
         V0d3N6IiVkYaB5Zr+V1HJz9QKDPLYdSny8uwr1T7lH8EiSWr+gKPkPDYB7gTtEPkkZF/
         iowyA/M8pRwsuNQIfJ85dKIWn1mMSLllmM2JvmknfpsWsLBQVUqTbniwEYO6UIeWEjLI
         kohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744091841; x=1744696641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntWAqYw/FbTf3Hq91IVHWRfD1c0otTEdS+CQ7J427hE=;
        b=MvV0AOOjIA0WSSPGfuafx7cojEJcx2tcY9e028ZbgtIcQpGjqL6fkPvVira1KGPVE3
         iSmJVbCC0HYVGFV+NkmUror/tLSaJrOK8cZ4FECDQEyhtVupxoQoMlA3uyLtA6POLy8f
         6GslWtSQETFotaT6QXHI5zh5AhtFhYAle0MWq+OTQhKizAeL7Hw0ZK6tpmTJQPzigLD7
         87MyLouWO3BQukTdZD7NBeQRuEUK38RpLN7FaT4cPCsBLhV+OxMyfLMT5dauu+m4a7Ff
         yPmGgk8qYz4IsNBgjEQLcTLMnfL5zPz9SuWEPPLum1Mgb/wto85nm2WzFIi7W+ilM3FJ
         DxLg==
X-Forwarded-Encrypted: i=1; AJvYcCWJea6CaMEeIyi8Z3mMw9iLOxe21pjidRJRa5dmifkaRZhv3H/M12gbVnRj2YLN9E+36Rbe7bY7Zn/JCQpLIw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2fJoDM35q8W0RzyHuV326Ob3sPSYZ7OyPxYwZzk9XYhATt08R
	7zGGaE+xAxQJwFx25H3pxSk+Jb79DKlRvHKYLwqNIgkzgrwCTgRLZe6j4ZvWI/0=
X-Gm-Gg: ASbGncvijiPkAP0wIZFG8fj17Qx6Ma+FO+7dQ04+bClip4toNN+ScjoKkoyEhU7SUmL
	UrEKEniiLMKcFLSG76iGfr6tMtQ3CZUJhxJP3Tl1J2resTheeUsjMiUbOVboi9cqjEKqCSBRj1K
	0iVcq+EZHhKuwO2h11KhTrSwQPS4JVvBrNg1Mza9YLGyBUIya67/6xLGBlToVZ30bcIAgzA46y7
	m5QuSfkUlrTYJiSAs9HKb+YyraTNhglAi0OvEtn/pRy82npptGdZPAA/H0rBreFnY/3gkfjA0rv
	Z2kpeIpja3IqRMYj6Ujq4E7gxjkm/aiSsaN07cPqeGYsHQ==
X-Google-Smtp-Source: AGHT+IHa7mNtQoh2kE0P3zD2ru6aZMt+A87LdNqpNKujZXMzxAW0s8D/vDJRFgVZKF/JyFi3WYplYw==
X-Received: by 2002:a17:90b:2d08:b0:2ee:9b09:7d3d with SMTP id 98e67ed59e1d1-306a4894cd0mr18110280a91.19.1744091840732;
        Mon, 07 Apr 2025 22:57:20 -0700 (PDT)
Received: from localhost ([122.172.83.32])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30588a3140asm10075622a91.29.2025.04.07.22.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 22:57:20 -0700 (PDT)
Date: Tue, 8 Apr 2025 11:27:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
	Conor Dooley <conor@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mips@vger.kernel.org, imx@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 00/19] Arm cpu schema clean-ups
Message-ID: <20250408055718.4azlqljvo4qxhnu5@vireshk-i7>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_225721_633751_A264EC63 
X-CRM114-Status: UNSURE (   7.14  )
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

On 03-04-25, 21:59, Rob Herring (Arm) wrote:
>  .../bindings/cpufreq/cpufreq-mediatek.txt          | 250 ---------------------
>  Documentation/devicetree/bindings/opp/opp-v1.yaml  |  18 +-

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
