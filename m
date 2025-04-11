Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE1CC36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCvXHDwdqn20M6aIIPShJtZqnpbro2QmZqOPOxPtoKc=; b=46lxiC7lumVJ66
	jUJnsBwUxRzhAEz8P0PQtcxAdQMbnCD/GRYkIpOj7TNB/eYUnMobxyTJx0ecFZ1LE78BMfslV5ygS
	CPju8022Y+myecbiH1P9QtlHCv2azc5XV96ul7NZqOMOpR+QW/Hetrd+q+Txc/tV1g6AerXinOPJi
	mUOOpkEQpXUdBj8EhgZIinYy4lSuq0S8FldQiT6Gw8MwUnA0OLoaHwzz0lztfSHAAwRzwGRkEf842
	whMXB9D2lLDf6TVNc6MTTV6jbs6iHegKxDp3Ye8fQXN1jVgZXjh4BZSNpTnBdQ5fQcaHmj3whps/M
	q77F3DG8pDdweu64OpXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3BU9-0000000DMG2-05FI;
	Fri, 11 Apr 2025 10:19:45 +0000
Received: from mail-m21472.qiye.163.com ([117.135.214.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AIQ-0000000D7uA-0MeF
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 09:03:36 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 118726940;
	Fri, 11 Apr 2025 17:03:20 +0800 (GMT+08:00)
Message-ID: <a6c4d850-2266-b4a4-8124-76f6b97b955d@rock-chips.com>
Date: Fri, 11 Apr 2025 17:02:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable L0S capability
To: Niklas Cassel <cassel@kernel.org>
References: <1744332481-143011-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_jYJKL9rOGMR0xg@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <Z_jYJKL9rOGMR0xg@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtNGFZISEwdQ0pKSx4dQ09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a962416dd5609cckunm118726940
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6STo*MzJJAitDLzIRAhJO
	ETUaCzJVSlVKTE9PSE1JSUtKTkNCVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhCS0I3Bg++
DKIM-Signature: a=rsa-sha256;
	b=hUB6wmD78FyIGC1nc36hjYY5K192mVKoOwjf7eY+cSuVmWNm+dM4NRsss9UreYiM1jQi9wwyQITuBRBl7+7FkOfLb/DENnFAKMU3ap8ZLTcEPQY3VZdbigYS4EsjZCoKC+DVMM4cTcrEKkNq87m+KDLzP95NwzylwoIdL9K6ye0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=L8QCl6JDfudg2yNGtJCSx6pHSm7UpoNcQjDivG98Cn4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_020334_737378_8372695F 
X-CRM114-Status: GOOD (  26.71  )
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

5ZyoIDIwMjUvMDQvMTEg5pif5pyf5LqUIDE2OjUxLCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBI
ZWxsbyBTaGF3biwKPiAKPiBPbiBGcmksIEFwciAxMSwgMjAyNSBhdCAwODo0ODowMUFNICswODAw
LCBTaGF3biBMaW4gd3JvdGU6Cj4+IEwwUyBjYXBhYmlsaXR5IGlzbid0IGVuYWJsZWQgb24gYWxs
IFNvQ3MgYnkgZGVmYXVsdCwgc28gZW5hYmxpbmcgaXQKPj4gaW4gb3JkZXIgdG8gbWFrZSBBU1BN
IEwwUyB3b3JrIG9uIFJvY2tjaGlwIHBsYXRmb3Jtcy4gV2UgaGF2ZSBiZWVuCj4+IHRlc3Rpbmcg
aXQgZm9yIHF1aXRlIGEgbG9uZyB0aW1lIGFuZCBmb3VuZCB0aGUgZGVmYXVsdCBGVFMgbnVtYmVy
Cj4+IHByb3ZpZGVkIGJ5IERXQyBjb3JlIGRvZXNuJ3Qgd29yayBzdGFibGUgYW5kIG1ha2UgTFRT
U00gc3dpdGNoIGJldHdlZW4KPj4gTDBTIGFuZCBSZWNvdmVyeSwgbGVhZGluZyB0byBsb25nIGV4
aXQgbGF0ZW5jeSwgZXZlbiBmYWlsIHRvIGxpbmsgc29tZXRpbWVzLgo+PiBTbyBvdmVycmlkZSBp
dCB0byB0aGUgbWF4IDI1NSB3aGljaCBzZWVtcyB3b3JrIGZpbmUgdW5kZXIgdGVzdCBmb3IgYm90
aCBQSFlzCj4+IHVzZWQgYnkgUm9ja2NoaXAgcGxhdGZvcm1zLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5n
ZXMgaW4gdjI6Cj4+IC0gTW92ZSBuX2Z0cyB0byBwcm9iZSBmdW5jdGlvbgo+PiAtIHJld3JpdGUg
dGhlIGNvbW1pdCBtZXNzYWdlCj4+Cj4+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jIHwgMTQgKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4+IGluZGV4IDIxZGM5OWMuLmMzOTdmM2EgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+PiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPj4gQEAgLTE4NSw2
ICsxODUsMTcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3Bj
aWUgKnBjaSkKPj4gICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfc3RhcnRfbGluayhzdHJ1Y3Qg
ZHdfcGNpZSAqcGNpKQo+PiAgIHsKPj4gICAJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlw
ID0gdG9fcm9ja2NoaXBfcGNpZShwY2kpOwo+PiArCXUzMiBjYXAsIGxua2NhcDsKPj4gKwo+PiAr
CS8qIEVuYWJsZSBMMFMgY2FwYWJpbGl0eSBmb3IgYWxsIFNvQ3MgKi8KPj4gKwljYXAgPSBkd19w
Y2llX2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQKTsKPj4gKwlpZiAoY2FwKSB7
Cj4+ICsJCWxua2NhcCA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgY2FwICsgUENJX0VYUF9MTktD
QVApOwo+PiArCQlsbmtjYXAgfD0gUENJX0VYUF9MTktDQVBfQVNQTV9MMFM7Cj4+ICsJCWR3X3Bj
aWVfZGJpX3JvX3dyX2VuKHBjaSk7Cj4+ICsJCWR3X3BjaWVfd3JpdGVsX2RiaShwY2ksIGNhcCAr
IFBDSV9FWFBfTE5LQ0FQLCBsbmtjYXApOwo+PiArCQlkd19wY2llX2RiaV9yb193cl9kaXMocGNp
KTsKPj4gKwl9Cj4gCj4gSSB0aGluayBpdCBsb29rcyB3cm9uZyB0byBoYXZlIHRoaXMgaW4gX3N0
YXJ0X2xpbmsoKS4KPiBXaHkgbm90IHB1dCB0aGlzIGNvZGUgaW4gYSBuZXcgIl9lbmFibGVfbDBz
KCkgZnVuY3Rpb24sIGFuZCBjYWxsIGl0IGZyb206Cj4gcm9ja2NoaXBfcGNpZV9lcF9pbml0KCkg
YW5kIHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0KCkuCj4gCgpXaWxsIGRvLgoKPiBXaGVuIGxvb2tp
bmcgYXQgdGhpcywgd2UgcHJvYmFibHkgc2hvdWxkIGFsc28gbW92ZSB0aGUKPiByb2NrY2hpcF9w
Y2llX2VwX2hpZGVfYnJva2VuX2F0c19jYXBfcmszNTg4KCkgY2FsbCBmcm9tIF9wcmVfaW5pdCgp
IHRvIF9pbml0KCksCj4gYmVjYXVzZSBpZiB0aGVyZSBpcyBhIGNvcmUgcmVzZXQsIF9pbml0KCkg
aXMgY2FsbGVkIGFnYWluLCBidXQgX3ByZV9pbml0KCkgaXMKPiBub3QuCgpUaGF0J3MgYSBnb29k
IHBvaW50LgoKPiAKPiAKPj4gICAKPj4gICAJLyogUmVzZXQgZGV2aWNlICovCj4+ICAgCWdwaW9k
X3NldF92YWx1ZV9jYW5zbGVlcChyb2NrY2hpcC0+cnN0X2dwaW8sIDApOwo+PiBAQCAtNTk4LDYg
KzYwOSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+PiAgIAlyb2NrY2hpcC0+cGNpLmRldiA9IGRldjsKPj4gICAJcm9ja2No
aXAtPnBjaS5vcHMgPSAmZHdfcGNpZV9vcHM7Cj4+ICAgCXJvY2tjaGlwLT5kYXRhID0gZGF0YTsK
PiAKPiBQZXJoYXBzIGFkZCBhIG5ld2xpbmUgaGVyZS4KPiAKPj4gKwkvKiBEZWZhdWx0IGZ0cyBu
dW1iZXIoMjEwKSBpcyBicm9rZW4sIG92ZXJyaWRlIGl0IHRvIDI1NSAqLwo+IAo+IFBlcmhhcHMg
YWRkIGEgc3BhY2UgYmV0d2VlbiAibnVtYmVyIiBhbmQgIigiLgo+IFBlcmhhcHMgd3JpdGUgaXQg
YXMgTl9GVFMgaW5zdGVhZCBvZiBmdHMuCj4gUGVyaGFwcyB1c2UgInZhbHVlIiBpbnN0ZWFkIG9m
ICJudW1iZXIiLgo+IAo+IGllLgo+IAo+IC8qIERlZmF1bHQgTl9GVFMgdmFsdWUgKDIxMCkgaXMg
YnJva2VuLCAuLi4gKi8KPiAKClN1cmUuCgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
