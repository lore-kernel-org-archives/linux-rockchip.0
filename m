Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A83EC4829E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scT0hGeAcGRktQyOEkc39KDR2aRG0EX6nGtXReJUuZY=; b=zRKDZDoPweZ8yb
	4Hao/qWWCaddQr7C8Me5BX57Popu2EU/0b+l2p08izgZlScKki58T5IKFQgkm9NmZYKo0WOH/pQIB
	uyuUCzb7B9M00nuL9t5qjXcgsctORuaMTPslK/bQ4RQx2H7ornfhuPTnyFbOoLzpFzDJdMf3fp0Rc
	2mitmFwwG42tzGe/k4+HsjVa5Y83f9Uvdzc0LVl4tbDRKdsRKXJ0z6I78wKW3UtpuAFp7xcj7+8lG
	yeFG3RqTS/2CPaZiy/pDUTpTOrNFmTGtcPufFjiVlERospx8TyxQrSTfE5Q9HjUWhG/yjUJ9uZOX6
	lIsK5NFbY5dSl7JTCQ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZY8-0000000FwPl-27Mw;
	Thu, 15 Feb 2024 11:05:04 +0000
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZXx-0000000FwGR-0UG0;
	Thu, 15 Feb 2024 11:04:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailfout.nyi.internal (Postfix) with ESMTP id CF62713800C3;
	Thu, 15 Feb 2024 06:04:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 15 Feb 2024 06:04:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1707995091; x=
	1708081491; bh=RR82po224cAnswqmdwu8OoWa4lFFfxWacXvl3FqD6cw=; b=V
	dn1X8sw9WwamSRxcnD6fyPcGr7yehA7EGVxLEGYjCL0MpAji4tv6SqLXUc7thcpo
	wB5m1y+ZxzIWSHqKZExOGn2QpxeMI4yT77i7V1L9vVmhfbAosm8mblR6jTQLCyzT
	N+XV3iSZKPmVkUWUMoJfwkKYnilEQru3G+6Uva7uaXEL/TfSq/hSfJ/ShLmIruPF
	NrdBn4S2glUoKsNMT44XwwylC62laBXDUfy8cmPY2TwnwtdCgfoSE0CLMXKB0XmE
	JjieWCKQe9b54NXrhaLZ6iAf5nRfNR8v8r5rQw4gRjup290dltmUZlNsZYZ1TbiA
	3yut968rAQtD60LXDPxeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1707995091; x=
	1708081491; bh=RR82po224cAnswqmdwu8OoWa4lFFfxWacXvl3FqD6cw=; b=R
	GKr+cD6wxieC818LLDvpygzNcXfUpVhA1kTe2t54f1fo/4t5oLmFRtMqMOGDKQK0
	NJiwHbczbXl8jJnJNXqHK/70Rt//kPuR41h0QLBzRpyDLn96I3TlcPgCP3yoWtXE
	4HqpfTyYwURwErWioUicyTVHvjmLqGNTYdzFfCxdohK9ELJJQf+emYkvHFZSu06m
	29BP1isvTF2sYE1fYJluYBseqN3kCm4Z3u8UMrLOHis2ZZ7pX2z58zodWTLp2ry7
	THp1sIpLPBkyWvSwA6sHf7xn/dP/8D5JvfenJni7vKSohHNCZ1ltkzkf3Usr5FGI
	Xo8QRpthxPqeUsFsYauVQ==
X-ME-Sender: <xms:0-_NZQTBSnJ_8M8mVAQw6hyNjVVkH4ZmmpSoktQwt1mUR8qZl2xJog>
    <xme:0-_NZdzi44KaG6Zey652mJcz9O_gIH2pSpi8I_upExvczXtfQigQvJMhLF-V8DLU9
    oJOd4rK-g>
X-ME-Received: <xmr:0-_NZd2XCVtBuAzuW1G9PdFlbTzzjqJSS2Nt8B1oPIRfUDmAF1nYVOPNUGoFLu8KaIN5-nSdN6Qc7xaeJ6n2dLS52Y7Tq23YCaY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:0-_NZUCjJUw88KcDqG7S3b3gtoEexLN8HKB6k1hva1MjQCSGSh3mUg>
    <xmx:0-_NZZjG9XcHd2wyQcY0Jxu8u_mYteiFtI9iGq2LF_LD6zIYN4V0aA>
    <xmx:0-_NZQq7GElruxYU4PdOQLFP6gV407nAZC5JFjgZlIjjsXLN99J_tQ>
    <xmx:0-_NZQMU6rbaDB8kzADXuF9UJwspNrlrYlNcR-fp2PYBr9XsISPE0w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Feb 2024 06:04:47 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Thu, 15 Feb 2024 22:04:45 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: rockchip: Wifi improvements for Sonoff iHost
Date: Thu, 15 Feb 2024 22:04:25 +1100
Message-Id: <20240215110425.934740-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240215110425.934740-1-tim@feathertop.org>
References: <20240215110425.934740-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_030453_290481_B90E47FC 
X-CRM114-Status: GOOD (  11.26  )
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

In some instances the kernel fails to detect the sdio wifi module
in the Sonoff iHost.

Tweak sdio properties to improve detection of rtl8723ds wifi module

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
index ba6c3a674f22..9a87dc0d5f66 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
@@ -327,7 +327,7 @@ &pmu_io_domains {
 	pmuio1-supply = <&vcc3v3_sys>;
 	vccio1-supply = <&vcc_1v8>;
 	vccio2-supply = <&vccio_sd>;
-	vccio3-supply = <&vcc_1v8>;
+	vccio3-supply = <&vcc3v3_sd>;
 	vccio4-supply = <&vcc_dovdd>;
 	vccio5-supply = <&vcc_1v8>;
 	vccio6-supply = <&vcc_1v8>;
@@ -345,14 +345,14 @@ &sdio {
 	cap-sd-highspeed;
 	cap-sdio-irq;
 	keep-power-in-suspend;
-	max-frequency = <100000000>;
+	max-frequency = <50000000>;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
 	rockchip,default-sample-phase = <90>;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_sys>;
+	sd-uhs-sdr50;
+	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
 };
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
