Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AA7C624B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Nov 2023 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgw9+39O9gBtbAOmwRi8ZKOYfXrsSnohlhsvw5rAXZc=; b=QQUv/+VOCnbbCJ
	fd9U6ZkA1GOnmfuJjg1rvS2tBmJ475uThUTNovWMHvzu1jeA+wQS2Dzmsxgb8A8UlYNe337xVCLMj
	Cm20bE6UJiIRuXu7BrMB67HeItsW07aSeCL92DdkaIi0fcxCaiJrfBJbEJQVCO0nDv1YWWjuwivq0
	Ip6L6ojPSmINr1D1IYb+yDzE3Ght7RYCCQ5Zmp39bqpMlxW+bHuP5s+YKbH1zAb7uRFNlDG2i9umA
	8xbYjz8NXZPeqDiRNo5zuB64VUZm2EA0w5ovRvLNgSQheawxWiwd4YojY/pEqwY3p15PAEKKUCZav
	LuSy0WMgr0Jfey6PGnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6XkJ-007Upd-1E;
	Fri, 24 Nov 2023 15:05:31 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6XkD-007Un2-1i;
	Fri, 24 Nov 2023 15:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1700838301; x=1701443101; i=frank-w@public-files.de;
	bh=Ix7kpbSVl/E0T/0d1Pht1rYCZKqw3dVgDyb07vLVcGc=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
	 References;
	b=PvbSTSIB4lffJljSG4x3vZo9axQe2k91WFc0HvK06Uksi2okqG7+tSkyoV+MGlHi
	 qB+NxwOL5rjz/C1NKlxPEBU4JtSY+l6QEUeNAiFun+qWx+A/C6a8HpCi9Yve0BCkW
	 FRd62tCPZrx93DokOlSHqhy5/ghscbSYDPq/uvmJC0jc5BRS15u4KvDi/Q2drr1kk
	 qvgomya4GLFbA+omT80QTN7MyzCXaa5gH4g7zjoGEDnBn8qgzpwXV6+j5/wjRHqDN
	 PHZDE/aS5AcUn7qvi7qsL/5CNZ1vlzAGWFMCx9aDGUmRaQTKTU7GgDTztTGjpnvG/
	 BR/ekAfiQ+xol7YibA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [80.245.79.113] ([80.245.79.113]) by web-mail.gmx.net
 (3c-app-gmx-bs48.server.lan [172.19.170.101]) (via HTTP); Fri, 24 Nov 2023
 16:05:01 +0100
MIME-Version: 1.0
Message-ID: <trinity-a9a71294-1396-43e4-9ed5-9ee2914ef093-1700838301802@3c-app-gmx-bs48>
From: Frank Wunderlich <frank-w@public-files.de>
To: Corentin LABBE <clabbe@baylibre.com>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
 ricardo@pardini.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Aw: Re:  [PATCH 6/6] crypto: rockchip: add rk3588 driver
Date: Fri, 24 Nov 2023 16:05:01 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <ZVtVkACNHTcCjqGp@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-7-clabbe@baylibre.com>
 <trinity-a0ee3146-f23d-4f6c-b29c-5fe446c4d4ad-1699797868421@3c-app-gmx-bs50>
 <ZVtVkACNHTcCjqGp@Red>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:KZY66OmMPVZRMlmi74pw8ADByftw6rLqB4krhDPt1n6lm6PqszSx4cKvc4cZjMaxiCH9q
 9l76vJDnRyCKy+eXbolThC+wwdw4dv1bdU4iTgErQSSMfaGhXdFf9Hw8m2d54Obzs6CpDsrq/18q
 TEe0LEFYkOe/u47SsG/Cz/fazr5GJSKcscqOCYKIKUI5ZS4Qz2H5T/mWYX/BAwcWhjtWXQ3IyITK
 gWvtkulcLy4Ksr8Efpa7xkFttn5SYux8Z7cGFDgcF33skBoacgmIdOyvNt6ysMKaEToS9LDLnTZO
 zw=
UI-OutboundReport: notjunk:1;M01:P0:nU8MkRQpVF4=;cW5EMDZ6CBFw9FyqPe6KBZB/V18
 K6E987HH1iAQnNOcy5ZBHGefyE25N6rxX+3pirLkOnU/zCkzodgk9FOxD9Cr1RQOJ9kCBB5OU
 jUboXEL0DRyXxqDsfqi+UATzF3N2/tp/G4gWip+pFqinf6NKT2XWejdO50yHxVXgc0Af3J+F1
 Yyz8h5CY0RZKPd0b5Gd23VSlmq+/Widrj5RK8DDKMX3Ak3oAFl2MGRuaFGFbPG+eE8UB3exU/
 J5W38CPcFE84FhhfxqzfTTr0LrEezSrHh5LDp93NU1UK4ECk6y0qJ+f0iaBMTkv3kIHI+Ohhf
 XoOWmrQcoaXHHv8IDCUz5B2NhyK1EiUtuK4DEHcksp3BynkMeM2/ymRpEIKNY0ulRuyzJRPm3
 +orjVtzoZWjdd2CkjhJfF2ah+uPoDp2pd1Z16SvQwmR5SfJMcvgt53OVp+jtSBC8rD314ggIe
 902t/NJ/xbV+W/bATfBPqX7Cx6WRmBvHwOng3dgR5Rv0TwPBwhGVzR57K9ZiGspS0M4liI+Q6
 QSIIBMjJBkamkRUnn3O+G06PooaSgO+99XkvoWNuE6Jv8W/tggIVAanoHtTD8Xy7G9M4ha71F
 sLwihv1Y8dsoJNQNwXtvU5jsUM4GpCu5fJCT6sGXsVdiVlD/bpKhgyViHDS0jQQmgqklkrrp0
 5lRwUv//M/OuJEbtmb5K01CzVlpVt/ik0vohNwuLlOfjMtRiU+Yd5AP5tLXBnrHcWy35cO6yb
 ItPBMt4lQN8fZGopD7NmXSoIQbY0GHqO8OzCdo6IPY5G1Q0n9QR7v9LEVt6g3JsDKOL/yg8qQ
 cQQlCI0IDm0t3wNCSzVHhNIA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_070525_947126_BA15F5E1 
X-CRM114-Status: UNSURE (   8.25  )
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

Hi

> Gesendet: Montag, 20. November 2023 um 13:48 Uhr
> Von: "Corentin LABBE" <clabbe@baylibre.com>

> You are using kcapi-rng but the driver do not support RNG yet. (and probably never if I continue to fail having good results with it).
> So it is normal values does not change.

which functions does the driver support atm? or how can i test correctly
(and which kernel options i need for this)?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
