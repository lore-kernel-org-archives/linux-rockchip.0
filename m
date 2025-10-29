Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5168CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 05:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZU2JF7YfU2b/yYVImofihf0rpiRq4Ptuc4gxXMUIZE=; b=kF/8FUwIR1ssDz
	Yft4JRxoclg0rFBXnO9pTZAot2OXmr5QZhOEYRDTTUSBq8eSTdRzdt1DssLjgWknmFWYkI0TY4SAT
	mE00hdX6T45J59yQqo+mrdRbWBu6TfcywHkgQeEiu36A3Hnsn+7pt+fujndbIbYAAgCu/naY70KuU
	ni5+fWVdwwEqE5KPfXxCHIeuWp3kkf+7+1FlproJrjXacVO3vHv22gSlWNGLkXSr2yKxKiPVLF3+h
	4jY7/eage8e9Hd4zMxQXOl88dwuw2YH/XkIAXs4ihZpE9h3DQ+DYhWuf6wYBvkEWl3j73I+PNOSTv
	fqJ0VQbt9+oe144wWp1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDz2J-0000000HMhY-1rwU;
	Wed, 29 Oct 2025 05:47:55 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDz2H-0000000HMgb-0dMq
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 05:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761716850; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=LmyknPLfvLXZ7H52EM5uhqfvm1eK6WkbCWoIB/CW8zbmNGbdoS7oanTle64VMH8thK
    zD9iTzsMHVpezGEiB3u/kSIK7UQ9u9yYp1w6TSXv6MTJXX3BqzolaPL9TZ+jzBUXkgNa
    Wew8o9I6RHEsx9vLihi99BS8ohKFD7I2pVP/DYKWtVIdaI88YhO8ti8umbj9+6CjWEn1
    DY1KT/xi5/0ycLtehOFwq2q//sZzj54lojYkP1u2NGUyOJ0Ho0RhGYsDL0HYbpy2blwD
    Y4CiOAugsAJfsXrPHMqfdkS1o+y6yIjDmTE13cb9RTv2VA3TokKLRWKEpX+Gn4TEwXy0
    y3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1761716850;
    s=strato-dkim-0002; d=strato.com;
    h=To:In-Reply-To:Cc:References:Message-Id:Date:Subject:From:Cc:Date:
    From:Subject:Sender;
    bh=nD/A1p+RHILMKnhWKlqaPG26jSHuFQvORVwKQeVq9QM=;
    b=Q3FsSnYMK9Q2DprNlObuSZwhgle36gcihx0tUQIh5L9BuU4VAQfyPES38nVadP1/hp
    Rj5x5aAZXZvsY85c6SlLBVp95eklDRx2JZMRYEKztB9/jo8zJnMOa/YxcFHQVzIeaMm3
    DhTOv22yO/RzjMjHtDEdyUohJf2ydAWsfJlZkbxP1t5bB/zr3UtGUiG5ywarCFLo+pK/
    n1AvYYD/OwFDJ8ayuWMA35NM0haOdlq4rR0LrAQ81/5dz16aSpRsATaLIgbOY5UIV7Xd
    WHrOf/uMAsxIekSMD4kTdPtoQBnrRk4qFlFbUrPg94tzc7xY2xvoM7UjcYVWPNV0ixJe
    nxVw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1761716850;
    s=strato-dkim-0002; d=xenosoft.de;
    h=To:In-Reply-To:Cc:References:Message-Id:Date:Subject:From:Cc:Date:
    From:Subject:Sender;
    bh=nD/A1p+RHILMKnhWKlqaPG26jSHuFQvORVwKQeVq9QM=;
    b=oiQiwl21GIHVb9ekxrdiMAzqgTpILqkbDIVX0SvRTe00Qh/KKHawOFY3gGT0Nkd6il
    P+5raq2zPaeDkAq7oioSkol1Y6KRkIbShLMjKXX3nlwIGd/FZrYDmsw3Xg7nX0crG96T
    SE7/6VQyUndnvh5lYWe6fcpPmh+bXyBKObqV1tXXYXTtB4hyRdag4sl+YepUdItuBwSL
    WLPUExPRznsT0AMpXocW84NDnjuIloT2kDzuzP5BDKC3xMEA8TTYZyjtmbGMvgizq2Tl
    kcS+H1JBeavYmjHcEIug6JlNMnCa7eOn3bwk5FuSI7k191qkpcg0DAGV4jA72RPgdALQ
    LSrA==
X-RZG-AUTH: ":L2QefEenb+UdBJSdRCXu93KJ1bmSGnhMdmOod1DhGN0rBVhd9dFr6P1rfO5KiO55fErqkryEafkCftK8YxNMWLn7nZHB4Eq/hCSkR9o2/A=="
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 53.4.2 AUTH)
    with ESMTPSA id e2886619T5lTHFv
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Wed, 29 Oct 2025 06:47:29 +0100 (CET)
From: Christian Zigotzky <chzigotzky@xenosoft.de>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Date: Wed, 29 Oct 2025 06:47:19 +0100
Message-Id: <D6280EFB-08D7-41EC-BAC6-FD7793A98A16@xenosoft.de>
References: <20251028233333.GA1467459@bhelgaas>
Cc: Johan Hovold <johan@kernel.org>, linux-pci@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Naoki FUKAUMI <naoki@radxa.com>, Herve Codina <herve.codina@bootlin.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Li <Frank.li@nxp.com>, "R.T.Dickinson" <rtd2@xtra.co.nz>,
 mad skateman <madskateman@gmail.com>, hypexed@yahoo.com.au,
 Christian Zigotzky <info@xenosoft.de>
In-Reply-To: <20251028233333.GA1467459@bhelgaas>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailer: iPhone Mail (23A355)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_224753_409642_A00BFD7A 
X-CRM114-Status: GOOD (  16.00  )
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

Cgo+IE9uIDI5IE9jdG9iZXIgMjAyNSBhdCAwMDozMyBhbSwgQmpvcm4gSGVsZ2FhcyA8aGVsZ2Fh
c0BrZXJuZWwub3JnPiB3cm90ZToKPiAKPiDvu79PbiBNb24sIE9jdCAyNywgMjAyNSBhdCAwNjox
MjoyNFBNICswMTAwLCBDaHJpc3RpYW4gWmlnb3R6a3kgd3JvdGU6Cj4+IEhpIEFsbCwKPj4gCj4+
IEkgYWN0aXZhdGVkIENPTkZJR19QQ0lFQVNQTSBhbmQgQ09ORklHX1BDSUVBU1BNX0RFRkFVTFQg
YWdhaW4gZm9yIHRoZSBSQzMgb2YKPj4ga2VybmVsIDYuMTguIFVuZm9ydHVuYXRlbHkgbXkgQU1E
IFJhZGVvbiBIRDY4NzAgZG9lc24ndCB3b3JrIHdpdGggdGhlIGxhdGVzdAo+PiBwYXRjaGVzLgo+
PiAKPj4gQnV0IHRoYXQgZG9lc24ndCBtYXR0ZXIgYmVjYXVzZSB3ZSBkaXNhYmxlIHRoZSBhYm92
ZSBrZXJuZWwgb3B0aW9ucyBieQo+PiBkZWZhdWx0LiBXZSBkb24ndCBuZWVkIHBvd2VyIG1hbmFn
ZW1lbnQgZm9yIFBDSSBFeHByZXNzIGJlY2F1c2Ugb2YgYm9vdAo+PiBpc3N1ZXMgYW5kIHBlcmZv
cm1hbmNlIGlzc3Vlcy4KPiAKPiBJZiB5b3UgaGF2ZSBhIGNoYW5jZSwgY291bGQgeW91IHRyeSB0
aGUgcGF0Y2ggYmVsb3cgb24gdG9wIG9mCj4gdjYuMTgtcmMzIHdpdGggQ09ORklHX1BDSUVBU1BN
PXk/Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3F1aXJrcy5jIGIvZHJpdmVycy9wY2kv
cXVpcmtzLmMKPiBpbmRleCAyMTRlZDA2MGNhMWIuLjJiNmQ0ZTA5NThhYSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9xdWlya3MuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL3F1aXJrcy5jCj4gQEAg
LTI1MjQsNiArMjUyNCw3IEBAIHN0YXRpYyB2b2lkIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDEo
c3RydWN0IHBjaV9kZXYgKmRldikKPiAgKiBkaXNhYmxlIGJvdGggTDBzIGFuZCBMMSBmb3Igbm93
IHRvIGJlIHNhZmUuCj4gICovCj4gREVDTEFSRV9QQ0lfRklYVVBfRklOQUwoUENJX1ZFTkRPUl9J
RF9BU01FRElBLCAweDEwODAsIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDEpOwo+ICtERUNMQVJF
X1BDSV9GSVhVUF9GSU5BTChQQ0lfVkVORE9SX0lEX0ZSRUVTQ0FMRSwgMHgwNDUxLCBxdWlya19k
aXNhYmxlX2FzcG1fbDBzX2wxKTsKPiAKPiAvKgo+ICAqIFNvbWUgUGVyaWNvbSBQQ0llLXRvLVBD
SSBicmlkZ2VzIGluIHJldmVyc2UgbW9kZSBuZWVkIHRoZSBQQ0llIFJldHJhaW4KClRoYW5rcyBm
b3IgdGhlIHBhdGNoLiAKCkkgd2lsbCB0ZXN0IGl0IG9uIG15IEZTTCBDeXJ1cysgYm9hcmQgb3Zl
ciB0aGUgd2Vla2VuZC4KQlRXLCBJIGFsc28gdGVzdGVkIG15IFBBU2VtaSBOZW1vIGJvYXJkIHdp
dGggdGhlIFJDMyBvZiBrZXJuZWwgNi4xOCBhbmQgd2l0aCBwb3dlciBtYW5hZ2VtZW50IGZvciBQ
Q0kgRXhwcmVzcyBlbmFibGVkLiBVbmZvcnR1bmF0ZWx5LCB0aGUgaW5zdGFsbGVkIEFNRCBSYWRl
b24gSEQ1ODcwIGRvZXMgbm90IHdvcmsgd2l0aCBwb3dlciBtYW5hZ2VtZW50IGZvciBQQ0kgRXhw
cmVzcyBlbmFibGVkIGVpdGhlci4KClBvd2VyIG1hbmFnZW1lbnQgZm9yIFBDSSBFeHByZXNzIGlz
IG5vdCBpbnRlcmVzdGluZyBmb3Igb3VyIG1hY2hpbmVzIGJlY2F1c2UgaXQgaXMgc29tZXdoYXQg
c2xvd2VyIGFuZCB3ZSBkbyBub3Qgd2FudCBwb3dlciBtYW5hZ2VtZW50IHRvIGltcGFpciBwZXJm
b3JtYW5jZS4KQnV0IGl0IGlzIGEgZ29vZCB0aGluZyBmb3IgMjQvNyBzZXJ2ZXJzLgoKLSBDaHJp
c3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
