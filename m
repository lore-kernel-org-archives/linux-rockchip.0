Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F93FE75453
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 13:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:From:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4UPKOTquqH9Y0dZMKnwxknJFVic1NgMnIBMUe6qsAJ0=; b=m2TRk/B8dZRAhS
	XnWQlE/1ntfgXRbYQGWf4KAoOlYemQuv6sYgLqfPoyQlox3nzD9YemjtkfjeO+dpMs39YbahBjIry
	/5vY5pDeBQIpFa0SksZsGerGDN7WGb3jn7QRixTFanvglhpNpogDHxUHeu4qVrcRbD5zKIoPr/8e2
	9wjkt3z2lXaJyvokOiIP40pkLruT7mDS9rOECZDfskMXAuug0andT2IWpg2iVzXPxzkBonUwHmLm9
	H7gN5DQZEtk/H3QCaXKBFsrdCx+SNKZu4z8ikAy/vDlA38ELQ8TVarR8/2KbuwrxQ0Bda565PrmX/
	cFHTSV93SKWVNJ8QYJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOvr-0000000GqjF-0vGo;
	Wed, 24 Dec 2025 13:29:39 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOvo-0000000Gqib-1OsM
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 13:29:37 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 3770661173
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 14:29:21 +0100 (CET)
Received: (qmail 9072 invoked by uid 990); 24 Dec 2025 13:29:21 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unkown) (::1)
	by devico.uberspace.de (Haraka/3.0.1) with ESMTPSA; Wed, 24 Dec 2025 14:29:20 +0100
Message-ID: <4d25ff80-1cd6-4d84-b516-92aafd5be62e@lausen.nl>
Date: Wed, 24 Dec 2025 14:29:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Leonard Lausen <leonard@lausen.nl>
Subject: RK3576 Rock 4D: PCIe NVMe device not detected in mainline kernel
 despite working in U-Boot
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-rockchip@lists.infradead.org
X-Rspamd-Bar: /
X-Rspamd-Report: BAYES_HAM(-0.152501) XM_UA_NO_VERSION(0.01) MIME_GOOD(-0.1)
X-Rspamd-Score: -0.242501
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:subject:date;
	bh=oE3wB8uGVz3HW6Yt5ZLvB8aBJkivtWELaAFqDlHgwHo=;
	b=s+6HqmU196snugpRwzvb8vdfqwfNYduYw8A3JcUHMHlL3lvtepzMq8q3toLQiZMXJbueSlYrt4
	BdxUd0Xa6/qugUE8uyh1rQywVSd0RU9elOzQkSZIN99MzSEbI+/f9zrWfQV+yfwR14Zg9i31H2Os
	zRZBuvk8/6BH8mKywdXL5lHqthfOzo+8wOMbYHOiGiPgkOB4rI1hQMQHs11FBcOKEGhYIxxEFr14
	/fpeGktjgAdxpo5Wf2hxdQvH2kzYPhfCULh+RFn9OIRPvU0AgXIk9WLQp0NUX5/tqy46OL9RmuKm
	V+Gg8D6R7sPFTHmZwmzDylBH8+Yy/PP3OhlxDB9+mzQcOoWPW1yAPkMqYOLEXrYIQK2N+Bht5K41
	GUz6hKIfS6TRtYJxxYTXuDR3STjPws2tYO9eHyKiPxnuTkBxJDgRxBK7vclgCpuNUDECCzCydgvy
	+8thV2UyqRyFdM99dIEgHA5K7Y6cbFObTOoatZebF2Inj9K/18dEhswg9fsYLwi1j9ghnpXxppmX
	5TtqORzP/bgmbU+RfEWwfYdzyhIqNtKmkUbAA5By2Eg8shoDoVSDYs9NbzkWoDDSvsmWXpzvyUup
	AHUeu+q5w+WXV8ajMhl1DUUr6KNB8ApkDrKGKbiIUVXO5PBUBr6rakd5T1uO9ZYdSI2xZ6Z1Cnzl
	U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_052936_596049_021F93AC 
X-CRM114-Status: UNSURE (   5.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi linux-rockchip, Hi Nicolas,

I'm testing mainline kernel support on the Rock 4D board and 
encountering an issue where PCIe NVMe devices are not detected by the 
kernel, despite working correctly in U-Boot. That is despite Nicolas 
recently enabling PCIe support for Rock 4D in 
29ff4bbff793334d6aff2238fdc3ccf3859d60da.

U-Boot successfully detects and initializes the NVMe device:

pcie@2a200000: PCIe Linking... LTSSM is 0x0
pcie@2a200000: PCIe Link up, LTSSM is 0x130011
pcie@2a200000: PCIE-0: Link up (Gen2-x1, Bus0)

Device 0: Vendor: 0x1344 Rev: HPS0050  Prod: UTFRQ0170J8QSZ
             Type: Hard Disk
             Capacity: 488386.3 MB = 476.9 GB (1000215216 x 512)


However, after kernel boot, only the PCIe root port is visible:

00:00.0 PCI bridge: Device 1d87:3576 (rev 01)


PCIe rescan debug output:

(initramfs) echo 1 > /sys/bus/pci/rescan
[  106.782392] pci_bus 0000:00: scanning bus
[  106.796249] pcieport 0000:00:00.0: restore config 0x2c: 0x00000000 -> 
0x00000000
[  106.797060] pcieport 0000:00:00.0: restore config 0x28: 0x00000000 -> 
0x00000000
[  106.797808] pcieport 0000:00:00.0: restore config 0x24: 0x0001fff1 -> 
0x0001fff1
[  106.798583] pcieport 0000:00:00.0: PME# disabled
[  106.799069] pcieport 0000:00:00.0: scanning [bus 01-ff] behind 
bridge, pass 0
[  106.799795] pci_bus 0000:01: scanning bus
[  106.803471] pci_bus 0000:01: bus scan returning with max=01
[  106.804073] pcieport 0000:00:00.0: scanning [bus 01-ff] behind 
bridge, pass 1
[  106.804829] pci_bus 0000:00: bus scan returning with max=ff
(initramfs) [  106.924154] pcieport 0000:00:00.0: save config 0x00: 
0x35761d87
[  106.924765] pcieport 0000:00:00.0: save config 0x04: 0x00100507
[  106.925364] pcieport 0000:00:00.0: save config 0x08: 0x06040001
[  106.925958] pcieport 0000:00:00.0: save config 0x0c: 0x00010000
[  106.926534] pcieport 0000:00:00.0: save config 0x10: 0x00000000
[  106.932142] pcieport 0000:00:00.0: save config 0x14: 0x00000000
[  106.934608] pcieport 0000:00:00.0: save config 0x18: 0x00ff0100
[  106.937206] pcieport 0000:00:00.0: save config 0x1c: 0x000000f0
[  106.939575] pcieport 0000:00:00.0: save config 0x20: 0x0000fff0
[  106.941883] pcieport 0000:00:00.0: save config 0x24: 0x0001fff1
[  106.944138] pcieport 0000:00:00.0: save config 0x28: 0x00000000
[  106.946335] pcieport 0000:00:00.0: save config 0x2c: 0x00000000
[  106.948490] pcieport 0000:00:00.0: save config 0x30: 0x00000000
[  106.950601] pcieport 0000:00:00.0: save config 0x34: 0x00000040
[  106.952698] pcieport 0000:00:00.0: save config 0x38: 0x00000000
[  106.954765] pcieport 0000:00:00.0: save config 0x3c: 0x0002012d
[  106.956847] pcieport 0000:00:00.0: PME# enabled
ls /sys/bus/pci/devices/
drwxr-xr-x 2 0 0 0 .
drwxr-xr-x 5 0 0 0 ..
lrwxrwxrwx 1 0 0 0 0000:00:00.0 -> 
../../../devices/platform/soc/22000000.pcie/pci0000:00/0000:00:00.0

The full boot log including the u-boot part and kernel PCI_DEBUG output 
is also attached.

Thanks for any insights!

Best regards,
Leonard

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
