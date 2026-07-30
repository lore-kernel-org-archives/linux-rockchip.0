Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB51C55162
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 16:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j7kqmcqDyiU9vEFYtGaOOvhziUlHc5J2S3Ybo6PXhA=; b=zRQwHhaEYLzQcy
	vQpzPl90l4V2wzG2qEvvh99/+Q1fWw15gfqSDiFGeiCD8WTyLGD6LiPiK4zjDNE+B24PiiBZw6Ler
	02YT2KHDhuVoiLbog8H7XPV+reliGboJjRUhcrNQsMe30t8lP0l901GYMOOtGV61YxC5vLyAgiOx3
	FdRAifbqzS1TWth7mPjxC+5B3U0G7RZYUJRFtnrzMbJD+GlshW0OJXnA7NFu+jPSCQwqqr/SqPt5h
	zb3hkefxfuMlIXMN7IYOIhuITW0s2lQPAhSNb7jpKRRhx8RB4HprWkY04UMaRYe9wuVoxXMgfGopa
	/gVCir37c+GqNtO+fpjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTsF-0000000B1x9-1KVl;
	Thu, 30 Jul 2026 16:44:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpTsD-0000000B1wg-2xu2;
	Thu, 30 Jul 2026 16:44:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DEBEC600AD;
	Thu, 30 Jul 2026 16:44:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 820931F000E9;
	Thu, 30 Jul 2026 16:44:37 +0000 (UTC)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
 Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Jingoo Han <jingoohan1@gmail.com>, Koichiro Den <den@valinux.co.jp>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Niklas Cassel <cassel@kernel.org>, 
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 mani@kernel.org, Lukas Wunner <lukas@wunner.de>, 
 Richard Zhu <hongxing.zhu@nxp.com>, Brian Norris <briannorris@chromium.org>, 
 Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
In-Reply-To: <20260729-pci-port-reset-v9-0-53570b92064d@oss.qualcomm.com>
References: <20260729-pci-port-reset-v9-0-53570b92064d@oss.qualcomm.com>
Subject: Re: [PATCH v9 0/5] PCI: Add support for resetting the Root Ports
 in a platform specific way
Message-Id: <178542987704.1025433.15649163299546579647.b4-ty@b4>
Date: Thu, 30 Jul 2026 18:44:37 +0200
MIME-Version: 1.0
X-Mailer: b4 0.15.2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIFdlZCwgMjkgSnVsIDIwMjYgMTA6MjI6MjYgKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPiBDdXJyZW50bHksIGluIHRoZSBldmVudCBvZiBBRVIvRFBDLCBQQ0kgY29yZSB3
aWxsIHRyeSB0byByZXNldCB0aGUgc2xvdCAoUm9vdAo+IFBvcnQpIGFuZCBpdHMgc3Vib3JkaW5h
dGUgZGV2aWNlcyBieSBpbnZva2luZyBicmlkZ2UgY29udHJvbCByZXNldCBhbmQgRkxSLiBCdXQK
PiBpbiBzb21lIGNhc2VzIGxpa2UgQUVSIEZhdGFsIGVycm9yLCBpdCBtaWdodCBiZSBuZWNlc3Nh
cnkgdG8gcmVzZXQgdGhlIFJvb3QKPiBQb3J0cyB1c2luZyB0aGUgUENJIGhvc3QgYnJpZGdlIGRy
aXZlcnMgaW4gYSBwbGF0Zm9ybSBzcGVjaWZpYyB3YXkgKGFzIGluZGljYXRlZAo+IGJ5IHRoZSBU
T0RPIGluIHRoZSBwY2llX2RvX3JlY292ZXJ5KCkgZnVuY3Rpb24gaW4gZHJpdmVycy9wY2kvcGNp
ZS9lcnIuYykuCj4gT3RoZXJ3aXNlLCB0aGUgUENJIGxpbmsgd29uJ3QgYmUgcmVjb3ZlcmVkIHN1
Y2Nlc3NmdWxseS4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvNV0gUENJOiBkd2M6
IGVwOiBDbGVhciBNU0kgaUFUVSBtYXBwaW5nIGluIGR3X3BjaWVfZXBfY2xlYW51cCgpCiAgICAg
IGNvbW1pdDogMzY2Mzc5NTg3MjZhNGJiYzYzMGMwODQ4ZWIzZWIwN2NiZmFlODljMgpbMi81XSBQ
Q0kvRVJSOiBBZGQgc3VwcG9ydCBmb3IgcmVzZXR0aW5nIHRoZSBSb290IFBvcnRzIGluIGEgcGxh
dGZvcm0gc3BlY2lmaWMgd2F5CiAgICAgIGNvbW1pdDogZTNlN2RhYmUyNWU3YmU3MDFjMmEyN2E0
MjVlYTcxYjE3ZTIzODM5NApbMy81XSBQQ0k6IGhvc3QtY29tbW9uOiBBZGQgbGluayBkb3duIGhh
bmRsaW5nIGZvciBSb290IFBvcnRzCiAgICAgIGNvbW1pdDogYTM2ZGEyYTI5NDBhNWMyM2EwYTJl
MGMyNDk2NmRhNjM3Y2E1MTNmYQpbNC81XSBQQ0k6IHFjb206IEFkZCBzdXBwb3J0IGZvciByZXNl
dHRpbmcgdGhlIFJvb3QgUG9ydCBkdWUgdG8gbGluayBkb3duIGV2ZW50CiAgICAgIGNvbW1pdDog
NmIxNGQ4YmRiYTg1NGUwMDMxYjRkYmFkZjJkOWNmNWI5OGY5NTYwMQpbNS81XSBtaXNjOiBwY2lf
ZW5kcG9pbnRfdGVzdDogQWRkIEFFUiBlcnJvciBoYW5kbGVycwogICAgICBjb21taXQ6IDJlN2Qx
MGFmMWNkMDViMjYwNTZhMDkwMzI3NzBkYjVjNDdiZDU0Y2QKCkJlc3QgcmVnYXJkcywKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
