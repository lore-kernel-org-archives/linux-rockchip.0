Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AFD1125809
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uf15R+apPbeQBHJvkrS+Pqp05waPNZqbkbsdluzJEdg=; b=Bnd8tjqBD1JBAiUEoseZGpRKmL
	jANq4G94+zuZpDesIYpulGz63XziaMr0RMeQBRWkno7y5TXDmDPTzg7qeApbuJgsmlJ0W1iZbP56X
	Kb4PrPkMwAaAkf9sHF0HAQKFyU3iK1Z73ixAg5EEerSKitUmAFP0emn3zksyUVgR7tfaG9dcIGXXq
	LWF1qxs2nLa3ZoypdNkv9w0qdsme/NsjBZ/XUl1Ky3dOLDrjhWxU21Yty95aGM/rzC3zxEtjPMoG9
	k+hDGZ6WrUTYCDMfBG7uyl35gzDh9DvbB4Kuo857l04wfWP4iNZyez0Tyfy4gDS57fwIj7+eYmKc1
	CKGkDDzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Jjo-0000000BeVJ-46xF;
	Wed, 11 Mar 2026 13:36:37 +0000
Received: from mail-m19731109.qiye.163.com ([220.197.31.109])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Jjn-0000000BeUb-0hU3
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:36:36 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3692ae640;
	Wed, 11 Mar 2026 21:36:28 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add mphy reset to ufshc node
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
 <1773193218-215988-3-git-send-email-shawn.lin@rock-chips.com>
 <20260311-rich-colorful-vicugna-abb4f7@quoll>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <83c2b26c-cee9-9109-3bb1-e053b72040cc@rock-chips.com>
Date: Wed, 11 Mar 2026 21:36:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260311-rich-colorful-vicugna-abb4f7@quoll>
X-HM-Tid: 0a9cdd1cf65509cckunmceb236d4132ca
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5KGlZCHR0ZSU0fGh4YGE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BWNzzvbmw27eTxI+XjnJ44RxoO8/XHFeD2qLW3ckWP08HqkTvgZLa+MuRhYw8LOUx5zhjkibwNHLJZL14w1bENhZWUnPPP+zXl+YUCt+vWHnmWkcfwc9hbjc/b3EYwdls24KB2gU68i1RVqJRgAvdpE/g+EzyGCrqlj9ud1z0j4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=pUA5wRzeY6t+IotBZS1hhgdRzPTcvIZMRhCj0BXlp04=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_063635_395351_6368E997 
X-CRM114-Status: GOOD (  12.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjYvMDMvMTEg5pif5pyf5LiJIDIxOjExLCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemB
kzoKPiBPbiBXZWQsIE1hciAxMSwgMjAyNiBhdCAwOTo0MDoxOEFNICswODAwLCBTaGF3biBMaW4g
d3JvdGU6Cj4+IEFkZCBtcGh5IHJlc2V0IHRvIHVmc2hjIG5vZGUgdG8gZnVsbHkgcmVzZXQgdGhl
IHdob2xlIFVGUyBibG9ja3MKPj4gaWYgbmVlZGVkLiBPdGhlcndpc2UsIGl0IG1heSBvY2Nhc2lv
bmFsbHkgcHJldmVudCB0aGUgVUZTIGNvbnRyb2xsZXIKPj4gZnJvbSBzdWNjZXNzZnVsbHkgbGlu
a2luZyB1cCB3aXRoIHRoZSBkZXZpY2UuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4KPiAKPiBZb3UgbXVzdCBub3QgY29t
YmluZSBEVFMgY2hhbmdlcyB3aXRoIHBhdGNoc2V0IHRhcmdldHRpbmcgU0NTSS9VRlMsCj4gYmVj
YXVzZSB0aGV5IGFwcGx5IGVudGlyZSBzZXQgYW5kIHRoaXMgRFRTIENBTk5PVCBnbyB0aGVyZS4K
PiAKCldlbGwsIEkgd2FzIHRoaW5raW5nIHRoYXQgZHQtYmluZ2RpbmdzIHdpbGwgZ28gdmlhIFVG
UyB0cmVlIGJ1dCBEVFMgaXMKcGlja2VkIHVwIHZpYSByb2NrY2hpcCB0cmVlLiBDb21iaW5lIHRo
ZW0gdG9nZXRoZXIgaXMgZWFzeSBmb3IgZm9sa3MgdG8KcmV2aWV3ZWQuIFdpbGwgc2VuZCB0aGVt
IHNlcGFyYXRlbHkuCgo+IE5BSwo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
