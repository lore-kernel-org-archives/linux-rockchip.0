Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75306C2A062
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9LibyvUQOfymupAb3h5p01uiGKbHXLDcNaQa6yV+a4=; b=0gIdhdUaGOjZOw
	pqDDXgmCeIFpBxuloTq3CHCLxaJcqiLi3ZDu3Xfk8sJ/vAg2iqa8fmXPn9Q12h32nY0BKe97eebkz
	c5RW6qQ+zTaIB2ylfCU/sjDHl8BwEDEfTNUFkGYSIG+Yg5qEmICy+2jxSwWBWSkAH4MKmgPi92fiE
	kEfJDNJUyWD0hbCd3lK466Wi7N3UuUEi5CB6/EkbgKhav87sk1iAuRAmOVFT38Ghufv5BWhWQT0jY
	NBw74QKiXXiJfA97zLPFY1XmhMWbHBBWepNNBwRtCyIrF5ScBhpFBFbfwsJq2VvDNSDEs9wJlAOf0
	OGvVSzBG4D7h12T2mPFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfh7-0000000Axhm-1JML;
	Mon, 05 Jan 2026 08:12:05 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfh4-0000000Axgi-3N8x
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 08:12:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767600719; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=j3TxEw4h2ty+CBBrphA22BWutsSuPA6zQ/co22lriQVklD6iFKrbk4AkTZjs7+Pdr8VX7W1RPaTG02HzZvkN/yfjy944H79Kh4t1fNfEV0vyZp6YlH2VIdcN1svaBv74tZTchTAtwFdflekEj+sCjYPVATQnPX8821nRlp/dARs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767600719; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=wQvoy3sFcfB2Xg2JsjyY53ukAhiB9xzKGNXh7t2/hOA=; 
	b=KTOIyXAjOQrulW6ONM4A1exffOG87QDxFq+ak6nGqsGGcn+6/xcthckHMh6j24BQ6DBWaviSajr4AwYK8oUnYbgO/nkUP1TW3RJ10gB5FenrcSLvCBONI4zleom+CC9qiOp0Cwz/Au5DM1vIpdyuBrcPthf/rzGQ9mHrqMg/kkk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767600719;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To:Cc;
	bh=wQvoy3sFcfB2Xg2JsjyY53ukAhiB9xzKGNXh7t2/hOA=;
	b=GCfzO/ueTNItb+LnA8X1ulp8lr0CBUEwZHJOjF4c2rVoAhKeXfahIMe/8/FgbrpT
	Z/zKQhLQ6CZQyHZqki/0eDjLScxkJXeD8cyyXtkUEDJ45sCDvqB0kOEtx1o36i/LUcq
	KO1cd+KE4ELjPkESSKmq5cBVvxMdYL5P4UYKjjDc=
Received: by mx.zohomail.com with SMTPS id 1767600717767865.7233325259439;
	Mon, 5 Jan 2026 00:11:57 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: linux-rockchip@lists.infradead.org, Leonard Lausen <leonard@lausen.nl>
Subject: Re: RK3576 Rock 4D: PCIe NVMe device not detected in mainline kernel despite
 working in U-Boot
Date: Mon, 05 Jan 2026 09:11:55 +0100
Message-ID: <3024034.e9J7NaK4W3@workhorse>
In-Reply-To: <4d25ff80-1cd6-4d84-b516-92aafd5be62e@lausen.nl>
References: <4d25ff80-1cd6-4d84-b516-92aafd5be62e@lausen.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_001202_883331_E845F824 
X-CRM114-Status: GOOD (  15.74  )
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

On Wednesday, 24 December 2025 14:29:20 Central European Standard Time Leonard Lausen wrote:
> Hi linux-rockchip, Hi Nicolas,
> 
> I'm testing mainline kernel support on the Rock 4D board and 
> encountering an issue where PCIe NVMe devices are not detected by the 
> kernel, despite working correctly in U-Boot. That is despite Nicolas 
> recently enabling PCIe support for Rock 4D in 
> 29ff4bbff793334d6aff2238fdc3ccf3859d60da.
> 
> U-Boot successfully detects and initializes the NVMe device:
> 
> pcie@2a200000: PCIe Linking... LTSSM is 0x0
> pcie@2a200000: PCIe Link up, LTSSM is 0x130011
> pcie@2a200000: PCIE-0: Link up (Gen2-x1, Bus0)
> 
> Device 0: Vendor: 0x1344 Rev: HPS0050  Prod: UTFRQ0170J8QSZ
>              Type: Hard Disk
>              Capacity: 488386.3 MB = 476.9 GB (1000215216 x 512)
> 
> 
> However, after kernel boot, only the PCIe root port is visible:
> 
> 00:00.0 PCI bridge: Device 1d87:3576 (rev 01)
> 
> 
> PCIe rescan debug output:
> 
> (initramfs) echo 1 > /sys/bus/pci/rescan
> [  106.782392] pci_bus 0000:00: scanning bus
> [  106.796249] pcieport 0000:00:00.0: restore config 0x2c: 0x00000000 -> 
> 0x00000000
> [  106.797060] pcieport 0000:00:00.0: restore config 0x28: 0x00000000 -> 
> 0x00000000
> [  106.797808] pcieport 0000:00:00.0: restore config 0x24: 0x0001fff1 -> 
> 0x0001fff1
> [  106.798583] pcieport 0000:00:00.0: PME# disabled
> [  106.799069] pcieport 0000:00:00.0: scanning [bus 01-ff] behind 
> bridge, pass 0
> [  106.799795] pci_bus 0000:01: scanning bus
> [  106.803471] pci_bus 0000:01: bus scan returning with max=01
> [  106.804073] pcieport 0000:00:00.0: scanning [bus 01-ff] behind 
> bridge, pass 1
> [  106.804829] pci_bus 0000:00: bus scan returning with max=ff
> (initramfs) [  106.924154] pcieport 0000:00:00.0: save config 0x00: 
> 0x35761d87
> [  106.924765] pcieport 0000:00:00.0: save config 0x04: 0x00100507
> [  106.925364] pcieport 0000:00:00.0: save config 0x08: 0x06040001
> [  106.925958] pcieport 0000:00:00.0: save config 0x0c: 0x00010000
> [  106.926534] pcieport 0000:00:00.0: save config 0x10: 0x00000000
> [  106.932142] pcieport 0000:00:00.0: save config 0x14: 0x00000000
> [  106.934608] pcieport 0000:00:00.0: save config 0x18: 0x00ff0100
> [  106.937206] pcieport 0000:00:00.0: save config 0x1c: 0x000000f0
> [  106.939575] pcieport 0000:00:00.0: save config 0x20: 0x0000fff0
> [  106.941883] pcieport 0000:00:00.0: save config 0x24: 0x0001fff1
> [  106.944138] pcieport 0000:00:00.0: save config 0x28: 0x00000000
> [  106.946335] pcieport 0000:00:00.0: save config 0x2c: 0x00000000
> [  106.948490] pcieport 0000:00:00.0: save config 0x30: 0x00000000
> [  106.950601] pcieport 0000:00:00.0: save config 0x34: 0x00000040
> [  106.952698] pcieport 0000:00:00.0: save config 0x38: 0x00000000
> [  106.954765] pcieport 0000:00:00.0: save config 0x3c: 0x0002012d
> [  106.956847] pcieport 0000:00:00.0: PME# enabled
> ls /sys/bus/pci/devices/
> drwxr-xr-x 2 0 0 0 .
> drwxr-xr-x 5 0 0 0 ..
> lrwxrwxrwx 1 0 0 0 0000:00:00.0 -> 
> ../../../devices/platform/soc/22000000.pcie/pci0000:00/0000:00:00.0
> 
> The full boot log including the u-boot part and kernel PCI_DEBUG output 
> is also attached.
> 
> Thanks for any insights!

Hi Leonard,

please try the following:

---
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 7023dc326d0e..987e127cae1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -700,7 +700,7 @@ rgmii_phy0: ethernet-phy@1 {
 &pcie0 {
        pinctrl-names = "default";
        pinctrl-0 = <&pcie_reset>;
-       reset-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
+       reset-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_LOW>;
        vpcie3v3-supply = <&vcc_3v3_pcie>;
        status = "okay";
 };

---

From my reading of the schematic, we messed up the reset GPIO
polarity here, so PCIe devices never get reset. Oopsie.

Kind regards,
Nicolas Frattaroli

> Best regards,
> Leonard
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
