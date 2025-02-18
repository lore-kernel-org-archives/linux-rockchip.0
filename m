Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1067C021A9
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 00:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZyTGLQx4QckQ+62OrvifKJmJbsvCaS4gig0fr0olV8=; b=by8xkPTO7WmRSN
	ddnWZnLMdUV074S5n8GSrfao2oSqRqorKJ+gj7YVgt50dPDN1RzncIUBroaZiuXBPnzRfQVwTGEWE
	88MhDxxAcESJVgkye1UZvhKf7/CWja33aJm2FxWuD4fEP/gCaXxf1Z83rZyrJFwbc64xfDHtarxhH
	OtYQ8Ez/ANUgBxGefDsAEKCWd5SEU8Apkl99KuzVHWDhVpUClK/tCWU3Vl6W2R/VW1eVCjF0gLgl0
	S/G8k4wsmswk09ykKFL/D5bBziChA7/GdcFvKVC6FmuOPAoyOVaYRDbA3ROLd9gsJuKpQpp/0oAsh
	fPd2KkktCgn441op5lDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkBrz-00000006NKo-3vyY;
	Tue, 18 Feb 2025 00:53:51 +0000
Received: from mail-m3286.qiye.163.com ([220.197.32.86])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkBrv-00000006NK6-0Ri5
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 00:53:49 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id b572cdb9;
	Tue, 18 Feb 2025 08:53:36 +0800 (GMT+08:00)
Message-ID: <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
Date: Tue, 18 Feb 2025 08:53:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J . Wysocki"
 <rafael@kernel.org>, "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform
 firmware
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Steven Price <steven.price@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <2579724.BzM5BlMlMQ@diego> <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
 <5649637.F8r316W7xa@diego>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <5649637.F8r316W7xa@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx9LQlYYGU5KHhgeSktLHR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a95168bd0e409cckunmb572cdb9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDo6TRw*ODITSjZJGRk2DQo*
	DwgwCUhVSlVKTEhCQ09LS0pDSEtIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlDTEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=Ve8XZR5DdhdutJmoUm52Yn9KDM9ybUQ8SwL+Jxe+GSWRuJn8fLb8iXr4M2wgSYMy7Axp7IOF9+N8gGeAgnA4qLVR5JLHsWbJ3xNcMzp3M6/IbTXG6V2K7kHQKClEJYn/UuF5bVp7+/zXpmfuDZ6awLPTlPdTjkhRz6DezIVQroI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=nYvAkn0k92xwOq7XB0RP+2OYSTXGGG+F1f9pneUsAuI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_165347_696750_FA6B2BC4 
X-CRM114-Status: GOOD (  20.44  )
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

SGkgSGVpa28sIFN0ZXZlbgoK5ZyoIDIwMjUvMi8xOCA0OjUwLCBIZWlrbyBTdMO8Ym5lciDlhpnp
gZM6Cj4gQW0gTW9udGFnLCAxNy4gRmVicnVhciAyMDI1LCAxODoxMDozMiBNRVogc2NocmllYiBT
dGV2ZW4gUHJpY2U6Cj4+IE9uIDE3LzAyLzIwMjUgMTU6MTYsIEhlaWtvIFN0w7xibmVyIHdyb3Rl
Ogo+Pj4gSGkgU3RldmVuLAo+Pj4KPj4+IEFtIE1vbnRhZywgMTcuIEZlYnJ1YXIgMjAyNSwgMTU6
NDc6MjEgTUVaIHNjaHJpZWIgU3RldmVuIFByaWNlOgo+Pj4+IE9uIDA1LzAyLzIwMjUgMDY6MTUs
IFNoYXduIExpbiB3cm90ZToKPj4+Pj4gSW5mb3JtIGZpcm13YXJlIHRvIGtlZXAgdGhlIHBvd2Vy
IGRvbWFpbiBvbiBvciBvZmYuCj4+Pj4+Cj4+Pj4+IFN1Z2dlc3RlZC1ieTogVWxmIEhhbnNzb24g
PHVsZi5oYW5zc29uQGxpbmFyby5vcmc+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+Pj4+PiAtLS0KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2gg
aXMgY2F1c2luZyBteSBGaXJlZmx5IFJLMzI4OCB0byBmYWlsIHRvIGJvb3QsIGl0IGhhbmdzCj4+
Pj4gc2hvcnRseSBhZnRlciByZWFjaGluZyB1c2VyIHNwYWNlLCBidXQgdGhlIGJvb3R1cCBtZXNz
YWdlcyBpbmNsdWRlIHRoZQo+Pj4+IHN1c3BpY2lvdXMgbGluZSAiQmFkIG1vZGUgaW4gcHJlZmV0
Y2ggYWJvcnQgaGFuZGxlciBkZXRlY3RlZCIuCj4+Pj4gSSBzdXNwZWN0IHRoZSBmaXJtd2FyZSBv
biB0aGlzIGJvYXJkIGRvZXNuJ3Qgc3VwcG9ydCB0aGlzIG5ldyBTTUMKPj4+PiBjb3JyZWN0bHku
IFJldmVydGluZyB0aGlzIHBhdGNoIG9uIHRvcCBvZiBsaW51eC1uZXh0IGdldHMgZXZlcnl0aGlu
Zwo+Pj4+IHdvcmtpbmcgYWdhaW4uCj4+Pgo+Pj4gSXMgeW91ciBib2FyZCBhY3R1YWxseSBydW5u
aW5nIHNvbWUgdHJ1c3RlZCBmaXJtd2FyZT8KPj4KPj4gTm90IGFzIGZhciBhcyBJIGtub3cuCj4+
Cj4+PiBTdG9jayByazMyODggbmV2ZXIgaGFkIHRmLWEgLyBwc2NpIFswXSwgSSBkaWQgd29yayBv
biB0aGF0IGZvciBhIHdoaWxlLAo+Pj4gYnV0IGRvbid0IHRoaW5rIHRoYXQgZXZlciB0b29rIG9m
Zi4KPj4+Cj4+PiBJJ20gd29uZGVyaW5nIHdobyB0aGUgc21jYyBjYWxsIGlzIGNhbGxpbmcsIGJ1
dCBkb24ndCBrbm93IGFib3V0Cj4+PiBhYm91dCBzbWNjIHN0dWZmLgo+Pgo+PiBHb29kIHF1ZXN0
aW9uIC0gaXQncyBxdWl0ZSBwb3NzaWJsZSB0aGluZ3MgYXJlIGJsb3dpbmcgdXAganVzdCBiZWNh
dXNlCj4+IHRoZXJlJ3Mgbm90aGluZyB0aGVyZSB0byBoYW5kbGUgdGhlIFNNQy4gTXkgRFRCIGlz
IGFzIHVwc3RyZWFtOgo+Pgo+PiAgICAgICAgICBjcHVzIHsKPj4gICAgICAgICAgICAgICAgICAj
YWRkcmVzcy1jZWxscyA9IDwweDAxPjsKPj4gICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9
IDwweDAwPjsKPj4gICAgICAgICAgICAgICAgICBlbmFibGUtbWV0aG9kID0gInJvY2tjaGlwLHJr
MzA2Ni1zbXAiOwo+PiAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBtdSA9IDwweDA2PjsKPj4K
Pj4gSSBoYXZlbid0IGludmVzdGlnYXRlZCB3aHkgdGhpcyBjb2RlIGlzIGF0dGVtcHRpbmcgdG8g
Y2FsbCBhbiBTTUMgb24KPj4gdGhpcyBib2FyZC4KPiAKPiBJIGd1ZXNzIHRoZSB3aHkgaXMgZWFz
eSwgc29tZXRoaW5nIHRvIGRvIHdpdGggc3VzcGVuZCA6LSkgLgo+IAo+IEkgZGlkIGdvIHRlc3Rp
bmcgYSBiaXQsIGJvb3RpbmcgYSByazMyODgtdmV5cm9uIHByb2R1Y2VzIHRoZSBzYW1lIGlzc3Vl
Cj4geW91IHNhdywgbGlrZWx5IGR1ZSB0byB0aGUgbm9uLWV4aXN0ZW50IHRydXN0ZWQtZmlybXdh
cmUuCj4gCj4gT24gdGhlIGFybTY0LXNpZGUsIEkgdHJpZWQgYSBwbGV0aG9yYSBvZiBzb2NzICsg
dGZhLXZlcnNpb25zLAo+IAo+ICAgIHJrMzMyODogdjIuNSB1cHN0cmVhbSg/KS10Zi1hCj4gICAg
cmszMzk5OiB2Mi45IHVwc3RyZWFtLXRmLWEKPiAgICBweDMwOiB2Mi40K3YyLjkgdXBzdHJlYW0t
dGYtYQo+ICAgIHJrMzU2ODogdjIuMyB2ZW5kb3ItdGYtYQo+ICAgIHJrMzU4ODogdjIuMyB2ZW5k
b3ItdGYtYQo+IAo+IGFuZCBhbGwgcmFuIGp1c3QgZmluZS4KPiBTbyBpdCByZWFsbHkgbG9va3Mg
bGlrZSB0aGUgc21jYyBjYWxsIGdvaW5nIHRvIHNvbWUgdW5zZXQgbG9jYXRpb24gaXMKPiB0aGUg
Y3VscHJpdC4KPiAKPiBMb29raW5nIGF0IG90aGVyIHVzZXJzIG9mIGFybV9zbWNjX3NtYywgbW9z
dCBvZiB0aGVtIHNlZW0gdG8gYmUgaGFuZGxlZAo+IHVuZ3VhcmRlZCwgYnV0IHNvbWUgb2xkZXIo
PykgYXJtMzIgYm9hcmRzIGFjdHVhbGx5IGNoZWNrIHRoZWlyIERUcyBmb3IgYW4KPiBvcHRlZSBu
b2RlIGJlZm9yZSB0cnlpbmcgdGhlaXIgc21jLWNhbGwuCj4gCj4gSSBndWVzcyBpbiB0aGUgcG0t
ZG9tYWluIGNhc2UsIHdlIGNvdWxkIGp1c3Qgd3JhcCB0aGUgY2FsbCB3aXRoOgo+IAlpZihhcm1f
c21jY2NfMV8xX2dldF9jb25kdWl0KCkgIT0gU01DQ0NfQ09ORFVJVF9OT05FKQo+IAoKVGhhbmtz
IGZvciB0aGUgcmVwb3J0IGFuZCBoZWxwaW5nIGZpbmQgb3V0IHRoZSBjYXVzZSEKCkBVbGYsIGlm
IHRoZSBzb2x1dGlvbiBhYm92ZSBzZWVtcyByZWFzb25hYmxlIHRvIHlvdSwgSSBjYW4gY29vayBh
IGZpeC11cApwYXRjaC4KCj4gSSd2ZSBjaGVja2VkIGluIG15IGJvYXJkcyBub3csIGFuZCBhbGwg
dGhlIGJvYXJkcyBtZW50aW9uZWQgYWJvdmUgc2VlbQo+IHRvIGhhbmRsZSB0aGlzIHdlbGwgd2l0
aCBzbWNjYy12ZXJzaW9ucyBvZiBhdCBsZWFzdCAweDEwMDAyIC4KPiAKPiBIZWlrbwo+IAo+IAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
