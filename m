Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7234C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:08:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C25F613BE
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:08:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C25F613BE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fw6wLCLXOyEDPcHjgvqAZP1/9U6RJGDmVh4MFlzJ6Vc=; b=LAlqVFM8AhlqiOEb38F+w9QHH
	pqIp1u/m5nREkaxcYT5av+jPVjTo9pmlFojF3+XkHiHHCQ/Bb/LJECGzTwSAtFInHfDDaPA413qB3
	IOcHj5cVyocETD9J9K+to4MgAqdegVo7aH6Flh/bGiWoBfnbs8ThxQuc1NS+0pFKWktJ8X0QFVRiT
	bpMouL4LMeNS2wfk00+xH5j14UivkdVLyCWuTQS7uW1Y+pRB75Fr855eRvVfr4Y+ghzPmIwjKBI+W
	zzqRYUZxr6KuVCvw8NV0Y3xkXUocM6RKrcC/gbjNNxXu++eJdYebychgyIREQIFclhm1jN8BZT/Wp
	uFuL/koOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laakO-005Kpk-TB; Sun, 25 Apr 2021 09:08:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laakK-005Kp7-Sc
 for linux-rockchip@desiato.infradead.org; Sun, 25 Apr 2021 09:08:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=/jJJL0CcpDWUjOIN9MBWxY1EdJfatO7Fp/TRRZSdaeE=; b=V6eAKbzw/CZpcq4I12ILEXOpxq
 RnbpYhUL+wPpDzgMe+yCPpglugH/Lq8JbE18cRHyqWgkg71YIpzXTKIrldxT7e2vOUjRjNouB3iTW
 GTiAXiEIqqNaX7j1HEJ89sAT2ZyMbxzTsJUvlvLKHEv5C2wVXsIdAwBYZFTaKvL8wsjagCDSLBv96
 vQ6O3ssWd1YH+FyoxwspjWd6VP1ZFTkb9rL6jXusD7Cx5p8G3Ijs2fw23e3IxE48swikOxnhidDhP
 ZnIzkeVHPlz+zUlA8xpnQPeVAJpBIejaEuV/lFufBTPAp4ujiSvpekBp8g0ifgPOJVKk/9yUXCarG
 EXO0orMg==;
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laakE-00FMuF-0Z
 for linux-rockchip@lists.infradead.org; Sun, 25 Apr 2021 09:08:04 +0000
Received: from localhost (unknown [192.168.167.172])
 by regular1.263xmail.com (Postfix) with ESMTP id 8CD8C610;
 Sun, 25 Apr 2021 17:07:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18451T140670035396352S1619341670916448_; 
 Sun, 25 Apr 2021 17:07:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <28b8855cf8005ca39a20aeebff46b6d1>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: kernel@collabora.com
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 net-next 0/3] net: stmmac: RK3566
To: Ezequiel Garcia <ezequiel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
References: <20210421203409.40717-1-ezequiel@collabora.com>
 <ae524a70-7886-27a0-1289-0c3a1c7371bb@rock-chips.com>
 <08e97e0e291aecb218b9ebb8aaa37afead504e1c.camel@collabora.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <84039ea3-711b-dce3-ee00-3a00b3315cf5@rock-chips.com>
Date: Sun, 25 Apr 2021 17:07:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <08e97e0e291aecb218b9ebb8aaa37afead504e1c.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_020802_419264_B98F2755 
X-CRM114-Status: GOOD (  25.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgRXplcXVpZWwsCgrlnKggMjAyMS80LzIzIOS4i+WNiDk6NTcsIEV6ZXF1aWVsIEdhcmNpYSDl
hpnpgZM6Cj4gSGkgRGF2aWQsCj4gCj4gVGhhbmtzIGEgbG90IGZvciByZXZpZXdpbmcuCj4gCj4g
T24gRnJpLCAyMDIxLTA0LTIzIGF0IDE3OjI0ICswODAwLCBEYXZpZCBXdSB3cm90ZToKPj4gSGkg
RXplcXVpZWwsCj4+Cj4+IOWcqCAyMDIxLzQvMjIg5LiK5Y2INDozNCwgRXplcXVpZWwgR2FyY2lh
IOWGmemBkzoKPj4+IE5vdyB0aGF0IFJLMzU2OCBTb0MgZGV2aWNldHJlZSB1cHN0cmVhbWluZyBp
cyBoYXBwZW5pbmcgWzFdLAo+Pj4gaGVyZSdzIGFub3RoZXIgcm91bmQgZm9yIHRoZSBSSzM1NjYg
ZHdtYWMuIFRoZXJlIHdhc24ndCBhbnkgY2xlYXIKPj4+IGNvbnNlbnN1cyBvbiBob3cgdG8gaW1w
bGVtZW50IHRoZSB0d28gaW50ZXJmYWNlcyBwcmVzZW50Cj4+PiBvbiBSSzM1NjgsIHNvIEkgZGVj
aWRlZCB0byBkcm9wIHRoYXQgYW5kIGp1c3Qgc3VibWl0IFJLMzU2NiBmb3Igbm93Lgo+Pj4KPj4+
IFRoaXMgaGFzIGJlZW4gdGVzdGVkIG9uIGEgUGluZTY0IFJLMzU2NiBRdWFydHo2NCBNb2RlbCBC
IGJvYXJkLAo+Pj4gREhDUCBhbmQgaXBlcmYgYXJlIGxvb2tpbmcgZ29vZC4KPj4+Cj4+PiBGb3Ig
YWxsIHRoZSBwZW9wbGUgdGVzdGluZywgaGVyZSdzIFF1YXJ0eiA2NCBNb2RlbCBCIGRldmljZSB0
cmVlCj4+PiBzbmlwcGV0Ogo+Pj4KPj4+ICDCoMKgwqDCoMKgwqDCoMKgIGdtYWMxOiBldGhlcm5l
dEBmZTAxMDAwMCB7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazM1NjYtZ21hYyIsICJzbnBzLGR3bWFjLTQuMjBhIjsKPj4KPj4g
SXQgaXMgYmV0dGVyIHRvIHVzZSAicm9ja2NoaXAscmszNTY4LWdtYWMiIGhlcmUsICJyb2NrY2hp
cCxyazM1NjYtZ21hYyIKPj4gaXMgbm90IGNvbXBhdGlibGUsIDM1NjggaGFzIHR3byBnbWFjcywg
d2hpY2ggYXJlIGNvbXBhdGlibGUgd2l0aCAzNTY2Lgo+Pgo+PiBJZiB0aGVyZSBpcyBubyBiZXR0
ZXIgd2F5LCB1c2luZyBidXNfaWQgZnJvbSBhbGlhcyBpcyBnb29kLCBpdCBpcyBhCj4+IGZpeGVk
IGlkLCBhbmQgVS1Cb290IGFsc28gdXNlIHRoZSBpZCB0byB3cml0ZSBNQUMgYWRkcmVzcyBpbnRv
IGtlcm5lbCBEVEIuCj4+Cj4+IHBsYXQtPmJ1c19pZCA9IG9mX2FsaWFzX2dldF9pZChucCwgImV0
aGVybmV0Iik7Cj4+Cj4gCj4gVGhpcyB3YXMgZGlzY3Vzc2VkLCBzZWUgQ2hlbll1J3MgcmVwbHku
IEkgdGhpbmsgdGhlIGlkZWEKPiBpcyBjb25zaWRlcmVkIGZyYWdpbGU6Cj4gCj4gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbmV0ZGV2L0NBR2IydjY3WkJSPVhERlBlWFFjNDI5SE51X2RiWV9fLUtO
NTB0dkJXNDRmWE1zNzhfd0BtYWlsLmdtYWlsLmNvbS8KPiAKPiBIb3dldmVyLCBJIGFncmVlIHdp
dGggeW91IGFib3V0IGdvaW5nIGJhY2sgdG8ganVzdCAicm9ja2NoaXAscmszNTY4LWdtYWMiLgo+
IEFkZGluZyByb2NrY2hpcCxyazM1NjYtZ21hYyBtYXliZSB3YXNuJ3QgYSBncmVhdCBpZGVhIDot
KQo+IAo+IFRoZSBtb3N0IGFjY2VwdGVkIHdheSBmb3J3YXJkIHNlZW1zIEhlaWtvJ3MgcHJvcG9z
YWwgb2YgaGFyZGNvZGluZyB0aGUgbW1pbwo+IGFkZHJlc3NlcyB0byBpZGVudGlmeSBlYWNoIGJs
b2NrLCBhcyBpdCdzIGRvbmUgaW4gdGhlIERTSSBkcml2ZXI6Cj4gCj4gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMjbjExNzAKPiAK
PiBXb3VsZCB5b3UgYWdyZWUgd2l0aCBpdD8KPiAKClllcywgSSBhZ3JlZS4KSSBhbHNvIHRoaW5r
IHRoZSBhbGlhcyBzaG91bGQgYmUgcmFyZWx5IGNoYW5nZWQuIFRoZSBEU0kgbW1pbyBhZGRyZXNz
ZXMgCmV4YW1wbGUgaGVyZSBjYW4gYmUgdXNlZCBmb3IgcmVmZXJlbmNlLCBhbmQgaXQgc2VlbXMg
dGhhdCBpdCB3aWxsIGJlIApzdHJvbmdlciB0aGFuIGFsaWFzLgoKPiBUaGFua3MhCj4gRXplcXVp
ZWwKPiAgIAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDAg
MHhmZTAxMDAwMCAweDAgMHgxMDAwMD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDMyIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPEdJQ19TUEkgMjkgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0LW5hbWVzID0gIm1hY2lycSIsICJldGhfd2FrZV9p
cnEiOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvY2tjaGlwLGdyZiA9
IDwmZ3JmPjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8
JmNydSBTQ0xLX0dNQUMxPiwgPCZjcnUgU0NMS19HTUFDMV9SWF9UWD4sCj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjcnUgU0NMS19HTUFD
MV9SWF9UWD4sIDwmY3J1IENMS19NQUMxX1JFRk9VVD4sCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjcnUgQUNMS19HTUFDMT4sIDwmY3J1
IFBDTEtfR01BQzE+LAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmY3J1IFNDTEtfR01BQzFfUlhfVFg+LCA8JmNydSBDTEtfR01BQzFfUFRQ
X1JFRj47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMg
PSAic3RtbWFjZXRoIiwgIm1hY19jbGtfcngiLAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAibWFjX2Nsa190eCIsICJjbGtf
bWFjX3JlZm91dCIsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJhY2xrX21hYyIsICJwY2xrX21hYyIsCj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJj
bGtfbWFjX3NwZWVkIiwgInB0cF9yZWYiOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJlc2V0cyA9IDwmY3J1IFNSU1RfQV9HTUFDMT47Cj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAic3RtbWFjZXRoIjsKPj4+Cj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyxtaXhlZC1idXJzdDsKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzbnBzLHRzbzsKPj4+Cj4+PiAgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyxheGktY29uZmlnID0gPCZnbWFjMV9zdG1tYWNf
YXhpX3NldHVwPjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzbnBzLG10
bC1yeC1jb25maWcgPSA8JmdtYWMxX210bF9yeF9zZXR1cD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc25wcyxtdGwtdHgtY29uZmlnID0gPCZnbWFjMV9tdGxfdHhfc2V0
dXA+Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1kaW8xOiBt
ZGlvIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJzbnBzLGR3bWFjLW1kaW8iOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwweDE+Owo+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6
ZS1jZWxscyA9IDwweDA+Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07
Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdtYWMxX3N0bW1hY19h
eGlfc2V0dXA6IHN0bW1hYy1heGktY29uZmlnIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyx3cl9vc3JfbG10ID0gPDQ+Owo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzbnBzLHJkX29z
cl9sbXQgPSA8OD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNucHMsYmxlbiA9IDwwIDAgMCAwIDE2IDggND47Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZ21hYzFfbXRsX3J4X3NldHVwOiByeC1xdWV1ZXMtY29uZmlnIHsKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyxyeC1xdWV1
ZXMtdG8tdXNlID0gPDE+Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBxdWV1ZTAge307Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfTsKPj4+Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ21hYzFf
bXRsX3R4X3NldHVwOiB0eC1xdWV1ZXMtY29uZmlnIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyx0eC1xdWV1ZXMtdG8tdXNlID0gPDE+
Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBx
dWV1ZTAge307Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICDC
oMKgwqDCoMKgwqDCoMKgIH07Cj4+Pgo+Pj4gV2hpbGUgaGVyZSwgSSdtIGFkZGluZyBhIHNtYWxs
IHBhdGNoIGZyb20gRGF2aWQgV3UsIGZvciBzb21lCj4+PiBzYW5pdHkgY2hlY2tzIGZvciBkd21h
Yy1yb2NrY2hpcC1zcGVjaWZpYyBub24tTlVMTCBvcHMuCj4+Pgo+Pj4gVGhhbmtzIQo+Pj4KPj4+
IFsxXSBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMTA0MjEwNjU5MjEuMjM5MTctMS1jbEBy
b2NrLWNoaXBzLmNvbQo+Pj4KPj4+IERhdmlkIFd1ICgyKToKPj4+ICDCoMKgIG5ldDogc3RtbWFj
OiBkd21hYy1yazogQ2hlY2sgcGxhdGZvcm0tc3BlY2lmaWMgb3BzCj4+PiAgwqDCoCBuZXQ6IHN0
bW1hYzogQWRkIFJLMzU2NiBTb0Mgc3VwcG9ydAo+Pj4KPj4+IEV6ZXF1aWVsIEdhcmNpYSAoMSk6
Cj4+PiAgwqDCoCBuZXQ6IHN0bW1hYzogRG9uJ3Qgc2V0IGhhc19nbWFjIGlmIGhhc19nbWFjNCBp
cyBzZXQKPj4+Cj4+PiAgwqAgLi4uL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy50eHTCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4+ICDCoCAuLi4vbmV0L2V0aGVybmV0L3N0bWlj
cm8vc3RtbWFjL2R3bWFjLXJrLmPCoMKgwqAgfCAxMjYgKysrKysrKysrKysrKysrKystCj4+PiAg
wqAgMiBmaWxlcyBjaGFuZ2VkLCAxMjQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+
Cj4+Cj4+Cj4gCj4gCj4gCj4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
