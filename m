Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0637C43602
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 02:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	MIME-Version:Subject:Date:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JR0hFFqE7niYi1681ZPsfWRJNz0IP9d+dg5Sx9E3hNc=; b=zaUUTWSzydI+JpKElv9aJ3GQuY
	GiqxHWZq8PD5UX4+Su0Eev7Q7AGY+Tc7FPn3jvnoj0dKBE3dXLiF+fdYxm5+N9jZINCeq39qm2iii
	MLSIVywqJyG4DREUG/JEHzKOIrK/GTFbN/gt3g47y/090aDZp9L6zru2qUnVxRhJgln9SpvLFhVtC
	hh/K4yaa5HqOmQXqsCHzhlwt8aH/PnF+Ch2Zevveh5HRtTzmE0FIcM130Be5gHpLfBSOcUVCrR2yL
	BvcYCZNagsvR/Wh1Qw78VY+xRIwULKxK2M0LXes8i7pTfWbH4Um5blBLPhBkaPYnMjPFN/ExRYyMZ
	zypmFxyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmO-00000005tYN-31R8;
	Fri, 03 Jul 2026 02:37:24 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.52])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmL-00000005tWp-2ciN
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 02:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783046239; bh=L3LDk1ob8lSeDF4p3l0ihZVgutygUEgJnbVoCOXhudc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=BexqFu+sS1amCYWbmHD/0cXna/KZx0prQ/CFKG3FFOwHydjK06V+hQeE2Ke3HfhLH
	 R4dOX6zCtFrFwqMpxHvXimLkCBEA/sUAtIEK4OXhl0od3HAwMCJKRsuh2wPdOutC/0
	 CZqcKrqDC8tnH2aUaa735Ch1LYxuyBeiZHUBX+1I=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 8F90EEF9; Fri, 03 Jul 2026 10:35:57 +0800
X-QQ-mid: xmsmtpt1783046165tfo4bxydx
Message-ID: <tencent_3FF37E324D5F34D332BF096C2341017F8808@qq.com>
X-QQ-XMAILINFO: N/WmRbclY25GcbFfHdsLffU7Siw2ZiY/P2ORHWlQiVIR1pAkU8CRL1iOj6uwkh
	 w7256vShoYbcC/jg8Srd4eppUn+BEeKw49YWU5j0aYBGCBqYYNsmIoayh8MK4RRNu61PT5eHzQPf
	 5aADoAhNlP8Cwf85aDvGhj209TL/mVmn6LOK4kWDROncpYUXojFwQRBcUWgvgmGngyQkVzj3oiFK
	 EIylRzFQGQRbmn3IJajE0cL+mmWq4Zyjcg3a9xPjwtTHrBg81Uy3BKYKpLRgJqJZoku0H5q0o6IO
	 fxhe50xZJ3kzga0+V4i0JfeEytZK4q/0U5DjTVkMmvYBhD+43wzNJzCWjghRGKOz+muMZfZ6K5JT
	 +50Tfkob7N5MDQ+x1DhvxS4Y2+r8XtUsyUMC9jOyD2t3WJgrVkrHtS6eRFYGHm5vFrgKGkg42f/m
	 qYpVK7rcZSh74HvJa1Cp0hlm3SSnghe2U0saeIGQAsLUjnovzT7beHkKqgagi5/ESKPFm7ZU5O5h
	 xHGwEgF6coPM2H1nla03ilBHMMlMO9jrPU7kfUHXNul3P5X+dA0tiWX2YIpq3sTfNkWWiZcqb5Ko
	 6hKzWWkYaXpL7lP2fR0CLzsq+lYg1QfSDth4uhuuWfNbSGnbrG5ZDqiQG94013Wbh6NNf6hPHiYg
	 lucrSf+zfxOC0eJPgxHPE6yxOjOGGyi1oOLLH/QSCOPnuQJrF1XErNNUwFSNuKbZ6PQ85434zK0z
	 7skNl2slV8BSlrX3cPQJgThLEVKMv4BkB6xo2016ug1iwTDQH8oepk2yC4ReEX3t5MwUbm56W70E
	 TJjrA8eTdO22zy8dtffehF1oSHBkqVaEa7rpceaUkwbE3c62X2DL1m/EuPPkraZ289OEZeS8MtKo
	 E5U/E9xbhAQrjHxAe4qS5mrXbL3OwSobTGtQ+xaIUQ3IACRwedBTv25cOvkj0Xay3IUvuKhg1UJW
	 kLhVRA+pGRf4j9rPDUbm2Yl48ZvF5c/3zOUIcVb0oSSXtw13/d0ZE+9yuwhDhdRStoam9AT0eJNt
	 UvBiKjdpbABAzIy3dRx9LpnXCAfOkZtvnwmFNrncFQaoab+W74VAE1m9X0ScOSABdrGBQVoNySPs
	 Y2tDzBa0GeJFbKx2oxrKybZBbIpQK6VBF7AfxT
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 10:35:43 +0800
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Enable CAN controller on
 RK3588-Tiger-Haikou
MIME-Version: 1.0
X-OQ-MSGID: <20260703-master-v3-4-6d56de6fd2f3@qq.com>
References: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
In-Reply-To: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_193721_982438_7A8471B8 
X-CRM114-Status: UNSURE (   8.89  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

CAN0 is piped through the Q7-connector to the CAN-Header on the Haikou
base-board, so enable support for it there.

At least on RK3588-Tiger, the CAN clocks default to 99MHz, limiting
usable CAN bitrates without skew. Errata documentation mentions
300MHz as the default frequency on RK3568, so replicate this here
to allow more bitrates.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 873fbeb8daa1..6273e695b039 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -155,6 +155,12 @@ vddd_audio_1v6: regulator-vddd-audio-1v6 {
 	};
 };
 
+&can0 {
+	assigned-clocks = <&cru CLK_CAN0>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
