Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A87C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 03:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nU3jmzEqQFdzWtSTXeph3hWzFUmqshE8RPUuDk3gOo=; b=25nCpnHDY8rGLB
	V3tUr359kEoLcYFdXymRdpwq4yQSi6//M7CmaFGiT6LQGuzSw3RvmRCya/58XzDbfZ9PJsDKKF65g
	eqZO0lkaP1bM9QWzhLgik0AtuJe6b1VvAv7wMU47mHPodxNjZ2hiMOjoY3CvjDIGrBpDwU5n9/8Kh
	Vm8Xa14lD55fog/3HUVRrnQb7oDlOPX+48LBY6R9WPXajkp3V8SS3NZbEcAhZqK7k1clncdNTMm1f
	fReh7NtbvPKunrI52nsV479zTwFYMn+55ITscrHxUI6aJKj0CkamWpFB07tnel1VBMkNbaxuw908Q
	93jFRlGYEXABLRwZu4jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u35VS-0000000CQpP-1bTg;
	Fri, 11 Apr 2025 03:56:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u35VQ-0000000CQpB-3vPO
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 03:56:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 593D168459;
	Fri, 11 Apr 2025 03:56:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 047E8C4CEE2;
	Fri, 11 Apr 2025 03:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744343798;
	bh=bJWBa2uv5b4aK1qceLv5Kv04rsNGQ07S4xvrzdlLjQY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XLS8/Dipx4fBpvTLV8avF/ndT9Ls+fuQzLmdgfWGOsFA3Q+9haQCQosMICR/fUDZ3
	 G0r5mzxtp77uI3geqKxxMKEM3e8gXR9QQKwei9GbkgaRm4ECHBBBryLBSVx+xvjpEe
	 6s4dWnXvh8uvRoyfBR3P0hU14rQ/tmB9trFrVNMAGaBruFIRNkoGiPG7R6HbHwISvm
	 xkRh919g50Ul/1htH23ApxADy7czk5h0YuG2bmMe+Ck0ezmy8avhjr49HgR3RvSpav
	 NEDNBlFavUnBVIfLH2MUOEc+TV5JgeKAlDhBSq3d4FURTBzvCHLPljh+AUprs1SWzK
	 IOuFG92D1KlRg==
Message-ID: <c9c68772-01ce-49a1-8fc2-02294209bbcc@kernel.org>
Date: Fri, 11 Apr 2025 12:56:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PCI: dw-rockchip: Add system PM support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
References: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
 <ac2760c1-e876-493f-8a44-4af16093423f@kernel.org>
 <b7c48a0e-650c-aa9b-3748-f8bd168984b3@rock-chips.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <b7c48a0e-650c-aa9b-3748-f8bd168984b3@rock-chips.com>
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

T24gNC8xMS8yNSAxMToyNiwgU2hhd24gTGluIHdyb3RlOgo+IOWcqCAyMDI1LzA0LzExIOaYn+ac
n+S6lCAxMDowMiwgRGFtaWVuIExlIE1vYWwg5YaZ6YGTOgo+PiBPbiA0LzEwLzI1IDE1OjUwLCBT
aGF3biBMaW4gd3JvdGU6Cj4+PiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX3N1c3BlbmQoc3Ry
dWN0IGRldmljZSAqZGV2KQo+Pj4gK3sKPj4+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tj
aGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+PiArCXN0cnVjdCBkd19wY2llICpwY2kgPSAm
cm9ja2NoaXAtPnBjaTsKPj4+ICsJaW50IHJldDsKPj4+ICsKPj4+ICsJcm9ja2NoaXAtPmludHgg
PSByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfSU5UUl9NQVNL
X0xFR0FDWSk7Cj4+PiArCj4+PiArCXJldCA9IGR3X3BjaWVfc3VzcGVuZF9ub2lycShwY2kpOwo+
Pj4gKwlpZiAocmV0KSB7Cj4+PiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzdXNwZW5kXG4i
KTsKPj4+ICsJCXJldHVybiByZXQ7Cj4+PiArCX0KPj4+ICsKPj4+ICsJcm9ja2NoaXBfcGNpZV9w
aHlfZGVpbml0KHJvY2tjaGlwKTsKPj4+ICsJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9j
a2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5jbGtzKTsKPj4+ICsJcmVzZXRfY29udHJvbF9hc3Nl
cnQocm9ja2NoaXAtPnJzdCk7Cj4+PiArCWlmIChyb2NrY2hpcC0+dnBjaWUzdjMpCj4+PiArCQly
ZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUzdjMpOwo+Pj4gKwlncGlvZF9zZXRfdmFs
dWVfY2Fuc2xlZXAocm9ja2NoaXAtPnJzdF9ncGlvLCAwKTsKPj4+ICsKPj4+ICsJcmV0dXJuIDA7
Cj4+PiArfQo+Pgo+PiBUaGlzIGZ1bmN0aW9uIG5lZWRzIGEgX19tYXliZV91bnVzZWQgaW4gaXRz
IGRlY2xhcmF0aW9uLCBvdGhlcndpc2UsIHlvdSBnZXQgYQo+PiBjb21waWxhdGlvbiB3YXJuaW5n
IHdoZW4gUE0gaXMgbm90IGVuYWJsZWQuCj4+Cj4+IHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQg
cm9ja2NoaXBfcGNpZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPj4KPj4KPiAKPiBFbW0u
LiBJIGRvbid0IHNlZSBhbnkgaG9zdCBkcml2ZXJzIHdpdGggc3lzdGVtIFBNIHN1cHBvcnQgdW5k
ZXIKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVyLyBhZGRzIHRoZXNlIDopCj4gCj4gI2dyZXAgc3Vz
cGVuZCBkcml2ZXJzL3BjaS9jb250cm9sbGVyLyAtcm4gfCBncmVwIF9fbWF5YmVfdW51c2VkICB8
IHdjIC1sCj4gMAo+IAo+IEFueXdheSwgd2lsbCBmaXggaXQuCgpJZiB5b3UgZG8gbm90IGFkZCBf
X21heWJlX3VudXNlZCwgeW91IGdldDoKCiAgQ0MgICAgICBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLm8KZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jOjc2MToxMjogd2FybmluZzoK4oCYcm9ja2NoaXBfcGNpZV9yZXN1bWXigJkg
ZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWZ1bmN0aW9uXQogIDc2MSB8IHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQogICAgICB8ICAgICAg
ICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn4KZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jOjczNzoxMjogd2FybmluZzoK4oCYcm9ja2NoaXBfcGNpZV9zdXNwZW5k
4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0KICA3MzcgfCBzdGF0
aWMgaW50IHJvY2tjaGlwX3BjaWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAgICAgIHwg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn4KCllvdSBkbyBub3QgZ2V0IHRoaXMgZm9y
IG90aGVyIGNvbnRyb2xsZXJzIGJlY2F1c2UgdGhleSB1c2UKTk9JUlFfU1lTVEVNX1NMRUVQX1BN
X09QUygpIHRvIHNldCB0aGUgUE0gb3BzLiBZb3VyIHBhdGNoIHVzZXMKU0VUX05PSVJRX1NZU1RF
TV9TTEVFUF9QTV9PUFMoKSB3aGljaCBpcyBkZWZpbmVkIGFzOgoKI2lmZGVmIENPTkZJR19QTV9T
TEVFUAojZGVmaW5lIFNFVF9OT0lSUV9TWVNURU1fU0xFRVBfUE1fT1BTKHN1c3BlbmRfZm4sIHJl
c3VtZV9mbikgXAoJTk9JUlFfU1lTVEVNX1NMRUVQX1BNX09QUyhzdXNwZW5kX2ZuLCByZXN1bWVf
Zm4pCiNlbHNlCiNkZWZpbmUgU0VUX05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMoc3VzcGVuZF9m
biwgcmVzdW1lX2ZuKQojZW5kaWYKClNvIHVubGlrZSB1c2luZyBkaXJlY3RseSBOT0lSUV9TWVNU
RU1fU0xFRVBfUE1fT1BTKCksIHRoZSBmdW5jdGlvbnMgbmFtZXMgYXJlCmFjdHVhbGx5IG5ldmVy
IHVzZWQgd2hlbiBDT05GSUdfUE1fU0xFRVAgaXMgbm90IGVuYWJsZWQuCgpTbyB0aGUgZml4IGlz
IHRvIGRvIGxpa2Ugb3RoZXIgY29udHJvbGxlcnMgYW5kIHVzZSBOT0lSUV9TWVNURU1fU0xFRVBf
UE1fT1BTKCkKb3IgdXNlIF9fbWF5YmVfdW51c2VkLgoKLS0gCkRhbWllbiBMZSBNb2FsCldlc3Rl
cm4gRGlnaXRhbCBSZXNlYXJjaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
