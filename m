Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84166C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:45:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D46CF6113B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:45:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D46CF6113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4qj3YuVeSHaSWSGN12v+K79ijw4N97Sxqzz22p8iS9M=; b=YmAT7++RpERqGLcQwKXNmkuhi
	iDuH7JSyMpHb4FyVYh80dNo72gdQMfmW5uWm4c9QOJjHCOOUceTmrdAb6T3S5rHmG+nX+DGP9B573
	CNYICsxo9NrFe7xM17X6g/1rUVQdtZfGpUJMEygSMoJODO3FrEqH6r2bdxtugF5yHMc+JBDMwJv21
	xjHOnNC/ajCBbeu8JsREWMsuotaxdMBkVIUg2ooDanQZj/+2ssdXTsElTbNEGEIZUyqBzzhVYRVnY
	xwyXDtKU5ZX5YgZC7MpszpufXl22HJNG6fPn5Ub0Gujd0tyqeO23sOk69Lm3dZVPnsHjNp/KUC5Z/
	dHKdUhVXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWidN-00DB4E-5x; Wed, 14 Apr 2021 16:44:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWidI-00DB3l-7z
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 16:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=+LWHyhIKKtWwerkOH2OVEjcswDw7BRD5apsTTfXHYSI=; b=NV4C81cAu86zu1n3k6CIh7KU7s
 LdhoEawR3i3nvmPseJsxbLxh5gUhW6HMgaMtJ10aMq+tJGhAdauhd43N8qAHFJH8e9jOjDAlnC8Mu
 uhkoYhQWFrLr4nX94Mv9XTFcGfDh+dne3uZbSWxQds5Gax3ECPEj7eHoEkHSKNlHQdLOrN6qSGWjH
 MoeXYgmyjB3FGafQ1hATwmtIQteMdxNyCISXQxNMCTn8yLojD8DI+Nu1jfgtarrPA0Tr5StW1E1xs
 liA52ceM02/Ce59ZfySN03ABeV+Vaj5TZ7hTfGMUy1SpxF2M2EcE8YcytcsOFK+5z4NFDaW9rapY+
 ZP4JPnVg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWidE-007x7W-SL
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 16:44:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 38F711F42831
Message-ID: <e66104ed9bd0600bcd21d4ed2de20a4fbca12e82.camel@collabora.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Chen-Yu Tsai
 <wens213@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Linux Kernel Network Developers
 <netdev@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Jose Abreu <joabreu@synopsys.com>, 
 "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, David Wu
 <david.wu@rock-chips.com>, kernel@collabora.com
Date: Wed, 14 Apr 2021 13:44:35 -0300
In-Reply-To: <11053800.MucGe3eQFb@diego>
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <16102d157576bfa7be341ed7508e70d930e40bab.camel@collabora.com>
 <CAGb2v67ZBR=XDFPeXQc429HNu_dbY__-KN50tvBW44fXMs78_w@mail.gmail.com>
 <11053800.MucGe3eQFb@diego>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_094449_199886_8F9FE906 
X-CRM114-Status: GOOD (  31.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyMDIxLTA0LTE0IGF0IDE4OjM1ICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgMTQuIEFwcmlsIDIwMjEsIDE4OjMzOjEyIENFU1Qgc2NocmllYiBDaGVu
LVl1IFRzYWk6Cj4gPiBPbiBUaHUsIEFwciAxNSwgMjAyMSBhdCAxMjoxNCBBTSBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4gSGkgUGV0
ZXIsIEhlaWtvLAo+ID4gPiAKPiA+ID4gT24gV2VkLCAyMDIxLTA0LTE0IGF0IDEzOjE1ICswMjAw
LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4gPiBBbSBNaXR0d29jaCwgMTQuIEFwcmlsIDIw
MjEsIDEzOjAzOjI1IENFU1Qgc2NocmllYiBQZXRlciBHZWlzOgo+ID4gPiA+ID4gT24gVHVlLCBB
cHIgMTMsIDIwMjEgYXQgNzozNyBQTSBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9y
YS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gK3N0YXRpYyB2b2lkIHJrMzU2Nl9zZXRfdG9f
cm1paShzdHJ1Y3QgcmtfcHJpdl9kYXRhICpic3BfcHJpdikKPiA+ID4gPiA+ID4gPiA+ICt7Cj4g
PiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZic3BfcHJp
di0+cGRldi0+ZGV2Owo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoCBpZiAoSVNfRVJSKGJzcF9wcml2LT5ncmYpKSB7Cj4gPiA+ID4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgIiVzOiBNaXNzaW5nIHJvY2tjaGlw
LGdyZiBwcm9wZXJ0eVxuIiwgX19mdW5jX18pOwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoCB9
Cj4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHJlZ21hcF93
cml0ZShic3BfcHJpdi0+Z3JmLCBSSzM1NjhfR1JGX0dNQUMxX0NPTjEsCj4gPiA+ID4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkszNTY4X0dNQUNfUEhZ
X0lOVEZfU0VMX1JNSUkpOwo+ID4gPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCByazM1Njhfc2V0X3RvX3JnbWlpKHN0cnVjdCBya19w
cml2X2RhdGEgKmJzcF9wcml2LAo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgdHhfZGVsYXksIGlu
dCByeF9kZWxheSkKPiA+ID4gPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZic3BfcHJpdi0+cGRldi0+ZGV2Owo+ID4gPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGJzcF9wcml2
LT5ncmYpKSB7Cj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
ZXZfZXJyKGRldiwgIk1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5XG4iKTsKPiA+ID4gPiA+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPiA+ID4gPiA+ID4g
PiA+ICvCoMKgwqDCoMKgwqAgfQo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gK8Kg
wqDCoMKgwqDCoCByZWdtYXBfd3JpdGUoYnNwX3ByaXYtPmdyZiwgUkszNTY4X0dSRl9HTUFDMF9D
T04xLAo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFJLMzU2OF9HTUFDX1BIWV9JTlRGX1NFTF9SR01JSSB8Cj4gPiA+ID4gPiA+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkszNTY4X0dNQUNfUlhDTEtfRExZ
X0VOQUJMRSB8Cj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgUkszNTY4X0dNQUNfVFhDTEtfRExZX0VOQUJMRSk7Cj4gPiA+ID4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3Jm
LCBSSzM1NjhfR1JGX0dNQUMwX0NPTjAsCj4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkszNTY4X0dNQUNfQ0xLX1JYX0RMX0NGRyhyeF9kZWxh
eSkgfAo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFJLMzU2OF9HTUFDX0NMS19UWF9ETF9DRkcodHhfZGVsYXkpKTsKPiA+ID4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgcmVnbWFwX3dyaXRlKGJzcF9wcml2LT5n
cmYsIFJLMzU2OF9HUkZfR01BQzFfQ09OMSwKPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBSSzM1NjhfR01BQ19QSFlfSU5URl9TRUxfUkdNSUkg
fAo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFJLMzU2OF9HTUFDX1JYQ0xLX0RMWV9FTkFCTEUgfAo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJLMzU2OF9HTUFDX1RYQ0xLX0RMWV9FTkFC
TEUpOwo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoCByZWdt
YXBfd3JpdGUoYnNwX3ByaXYtPmdyZiwgUkszNTY4X0dSRl9HTUFDMV9DT04wLAo+ID4gPiA+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJLMzU2OF9HTUFD
X0NMS19SWF9ETF9DRkcocnhfZGVsYXkpIHwKPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBSSzM1NjhfR01BQ19DTEtfVFhfRExfQ0ZHKHR4X2Rl
bGF5KSk7Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU2luY2UgdGhlcmUgYXJlIHR3byBH
TUFDcyBvbiB0aGUgcmszNTY4LCBhbmQgZWl0aGVyLCBvciwgb3IgYm90aCBtYXkKPiA+ID4gPiA+
ID4gPiBiZSBlbmFibGVkIGluIHZhcmlvdXMgY29uZmlndXJhdGlvbnMsIHdlIHNob3VsZCBvbmx5
IGNvbmZpZ3VyZSB0aGUKPiA+ID4gPiA+ID4gPiBjb250cm9sbGVyIHdlIGFyZSBjdXJyZW50bHkg
b3BlcmF0aW5nLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBQZXJoYXBzIHdlIHNob3VsZCBoYXZlIG1h
dGNoIGRhdGEgKHN1Y2ggYXMgcmVnID0gPDA+LCBvciBhZ2FpbnN0IHRoZQo+ID4gPiA+ID4gYWRk
cmVzcykgdG8gaWRlbnRpZnkgdGhlIGluZGl2aWR1YWwgY29udHJvbGxlcnMuCj4gPiA+ID4gCj4g
PiA+ID4gSG1tLCAicmVnIiB3aWxsIGJlIHVzZWQgYnkgdGhlIGFjdHVhbCBtbWlvIGFkZHJlc3Mg
b2YgdGhlIGNvbnRyb2xsZXIsCj4gPiA+ID4gc28gbWF0Y2hpbmcgYWdhaW5zdCB0aGF0IHNob3Vs
ZCBiZSB0aGUgd2F5IEkgZ3Vlc3MuCj4gPiA+ID4gCj4gPiA+ID4gV2UncmUgYWxyZWFkeSBkb2lu
ZyBzb21ldGhpbmcgc2ltaWxhciBmb3IgZHNpOgo+ID4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jI24xMTcwCj4gPiA+ID4g
Cj4gPiA+IAo+ID4gPiBJIGhhdmUgdG8gYWRtaXQsIEknbSBub3QgYSBmYW4gb2YgaGFyZGNvZGlu
ZyB0aGUgcmVnaXN0ZXJzIGluIHRoZSBrZXJuZWwuCj4gPiA+IAo+ID4gPiBEYXZpZCBXdSBzb2x2
ZWQgdGhpcyBpbiB0aGUgZG93bnN0cmVhbSBrZXJuZWwgYnkgdXNpbmcgYnVzX2lkLAo+ID4gPiB3
aGljaCBwYXJzZXMgdGhlIGRldmljZXRyZWUgImV0aGVybmV0QDAiIG5vZGUsIGkuZS46Cj4gPiA+
IAo+ID4gPiDCoCBwbGF0LT5idXNfaWQgPSBvZl9hbGlhc19nZXRfaWQobnAsICJldGhlcm5ldCIp
Owo+ID4gCj4gPiBXaGF0IGhhcHBlbnMgd2hlbiBvbmUgYWRkcyBhbm90aGVyIGV0aGVybmV0IGNv
bnRyb2xsZXIgKFVTQiBvciBQQ0llKSB0bwo+ID4gdGhlIGJvYXJkIGFuZCB3YW50cyB0byBjaGFu
Z2UgdGhlIG51bWJlcmluZyBvcmRlcj8KPiA+IAo+ID4gT3IgbWF5YmUgb25seSB0aGUgc2Vjb25k
IGV0aGVybmV0IGNvbnRyb2xsZXIgaXMgcm91dGVkIG9uIHNvbWUgYm9hcmQKPiA+IGFuZCB0aGUg
c3VibWl0dGVyIC8gdmVuZG9yIHdhbnRzIHRoYXQgb25lIHRvIGJlIGV0aGVybmV0MCwgYmVjYXVz
ZQo+ID4gaXQncyB0aGUgb25seSB1c2FibGUgY29udHJvbGxlcj8KPiAKPiBXaGljaCBtYXRjaGVz
IGEgZGlzY3Vzc2lvbiBJIGhhZCB3aXRoIEFybmQgYWJvdXQgdGhlIG1tYyBudW1iZXJpbmcuCj4g
SS5lLiB0aGVyZSB0aGUgZmlyc3QgbW1jIGRldmljZSBpcyBzdXBwb3NlZCB0byBiZSBtbWMwIGFu
ZCBzbyBvbiwKPiB3aXRob3V0IGdhcHMgLSBmb3IgcHJvYmFibHkgdGhlIHNhbWUgcmVhc29ucy4K
PiAKPiAKCldlbGwsIGdpdmVuIGVhY2ggY29udHJvbGxlciBoYXMgaXRzIG93biByZWdpc3RlciBz
cGFjZSwgbWF5YmUKanVzdCBtb2RlbCBpdCB3aXRoIGEgbmV3IHJlZyBjZWxsIG9yIGEgRFQgcHJv
cGVydHkgdGhhdCBpcyBhYmxlCnRvIGRpcmVjdGx5IGVuY29kZSB0aGUgYmFzZSBhZGRyZXNzPwoK
TG9va2luZyBhdCB0aGUgdmVuZG9yIGtlcm5lbCwgWFBDUyB3aWxsIGhhdmUgYW5vdGhlciBzZXQg
b2YgcmVnaXN0ZXJzLApzZXBhcmF0ZSBmb3IgZWFjaCBNQUMuCgpUaGFua3MsCkV6ZXF1aWVsCgo+
ID4gCj4gPiBUaGlzIHNlZW1zIGV2ZW4gbW9yZSBmcmFnaWxlIHRoYW4gaGFyZGNvZGluZyB0aGUg
cmVnaXN0ZXJzLgo+ID4gCj4gPiBSZWdhcmRzCj4gPiBDaGVuWXUKPiA+IAo+IAo+IAo+IAo+IAoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
