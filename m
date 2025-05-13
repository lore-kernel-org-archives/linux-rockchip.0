Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8320C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 12:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gydc7+HDB3WJtaRT9ckYlbGFu36gbSg0jQYTVPsjONw=; b=K/8e5/szxXKrgC
	Ow8wemFhEGe1Wul00H12rCSqwcI5VpuKxfCuWWHGwSQgm1D5vMbv8l0mYaYoHFYWbc1jNmKnJ6BLw
	la46j87yc/AV6X8qhgZKPAXGOVupdi7Q4R202wgSNTT+2SiftQ7ON76bIKCV45Uyf9R1rpuvYKSHj
	6P+b9QxqiIRrNUCnIPnHkKWdYr2uwFR7xgAcoAtQLXwD4MLygMOf9cQfsqrsD9DM3Ox+0/TE0jKzs
	DbVn3yZMbJh+HNHZDU2SX71vRPFHmwDJQ9m26nMvyBJQcho7Ah2lx3Hr8Pv0GAFsTrYkWNnoS/jLk
	LXLAl+nQ613Qdm6nLrCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEopD-0000000CMjk-0Xyr;
	Tue, 13 May 2025 12:33:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEon7-0000000CMXY-01EZ;
	Tue, 13 May 2025 12:31:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 197DCA4D477;
	Tue, 13 May 2025 12:31:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320A0C4CEE4;
	Tue, 13 May 2025 12:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747139483;
	bh=DeY+hySG4/vlZF1lPxJl4qMkf2CDQ8EAbK3bVeOGHAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LVlriGcxrn6kEgjdgOKyrKHwccz1+cZOFXkU2nKKKywUk1pIXfEI+8YAh7XYN8+6n
	 cHFlQ84+FvT8uZ9L/b5bMWKYaGszXZOqB06nHo6I3iOmjTHEq0KK1ZN5IIxNjMQaJK
	 P13Zgszs/BO2TBJoaEI6mgL9rhVSSWD6uIybhNty0g4OrSlUxHULUuF+zUPI5bKLUK
	 AYQzG1ojTNtKzWNEj2p//dlGBQZ6C/q1aPJNmu15pE2mCVKfV9XWctceIymB5nqkZE
	 xHLRjDxxlym0TadfaNEQgQRSMz5Ev3ipIT1huPuK/MQfaRHpQIzOLX4u6GnPzdXE61
	 MorJGUO+o8mkA==
Date: Tue, 13 May 2025 14:31:17 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Douglas <adouglas@cadence.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/6] PCI: endpoint: IRQ callback fixes and cleanups
Message-ID: <aCM7lWQiwJBwamEp@ryzen>
References: <20250513073055.169486-8-cassel@kernel.org>
 <20250513102522.GB2003346@rocinante>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250513102522.GB2003346@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_053125_113451_EA76F4B7 
X-CRM114-Status: UNSURE (   7.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXkgMTMsIDIwMjUgYXQgMDc6MjU6MjJQTSArMDkwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IEhlbGxvLAoKSGVsbG8KCj4gCj4gPiAgIFBDSTogZHdjOiBlcDogRml4
IGJyb2tlbiBzZXRfbXNpeCgpIGNhbGxiYWNrCj4gPiAgIFBDSTogY2FkZW5jZS1lcDogRml4IGJy
b2tlbiBzZXRfbXNpeCgpIGNhbGxiYWNrCj4gPiAgIFBDSTogZW5kcG9pbnQ6IGNsZWFudXAgZ2V0
X21zaSgpIGNhbGxiYWNrCj4gPiAgIFBDSTogZW5kcG9pbnQ6IGNsZWFudXAgc2V0X21zaSgpIGNh
bGxiYWNrCj4gPiAgIFBDSTogZW5kcG9pbnQ6IGNsZWFudXAgZ2V0X21zaXgoKSBjYWxsYmFjawo+
ID4gICBQQ0k6IGVuZHBvaW50OiBjbGVhbnVwIHNldF9tc2l4KCkgY2FsbGJhY2sKPiAKPiBOb3Rl
IHRoYXQgUENJIHByZWZlcnMgdG8gY2FwaXRhbGlzZSBmaXJzdCBsZXR0ZXIgb2YgdGhlIHN1Ympl
Y3QuCgpEbyBJIG5lZWQgdG8gcmVzZW5kIG9yIGNhbiBzb21lIG9mIHRoZSBtYWludGFpbmVycyBm
aXggdGhpcyB1cCB3aGlsZSBhcHBseWluZz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
