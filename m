Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2DE2E7719C
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gaA+hRsL3gcbLexmtXXDAvu1DMSrtVTSKuN1ixkL6EY=; b=tO+1JKPaxlmUNQetdYP/7ZbnCM
	b8mEWVjerxFjRstL4uGZQnP/+ESWEG/kUmztir2a4gKGV1K+uRhK3MEZ+rQu4MRNGMvCaSmFmllRm
	D7xVGRiUOVI3LMlG2A+EzTAf88Gyj53gEF9ex2OflYI655IzObQ9lzCQdnxDTF5L/R56L6Ji6mAMS
	3GSfeG9Qpa4elkbT+wsmaPZBVdz77CKzl9Roz1i2mjl3sebrcWFdEsqo8EDCVQSgYfDEDLftBrAjV
	4u9uA/C+bZBlIeuKpSZDC1ZYNrP1h/H5M+ggVsKG845cbL2+AoAptbDaprpz6V9F42qoYr1tje2t6
	9AApNLTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9ux-0000000ES5A-0rmY;
	Fri, 10 Jan 2025 07:58:55 +0000
Received: from mail-m12756.qiye.163.com ([115.236.127.56])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9uu-0000000ES3E-10sf;
	Fri, 10 Jan 2025 07:58:54 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 851e8425;
	Fri, 10 Jan 2025 15:58:45 +0800 (GMT+08:00)
Message-ID: <3460b2a3-9579-4a12-9eff-6e2f1a1cc91c@rock-chips.com>
Date: Fri, 10 Jan 2025 15:58:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/17] rockchip: Add rk3562 support
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <sasnc2ocxnlfp4kprsobu5gkajjb5wdxhld73bg6xocgb3foah@yjmphtvpmyff>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <sasnc2ocxnlfp4kprsobu5gkajjb5wdxhld73bg6xocgb3foah@yjmphtvpmyff>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4dTlYZGR1MSR1MTk5JGkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a944f3909e403afkunm851e8425
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTY6FBw4LDIQPQ8VMiJKC0lO
	K0kaCUlVSlVKTEhNT0JOQklCSkNLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQktCNwY+
DKIM-Signature: a=rsa-sha256;
	b=VWXK7s8da0RDYOHxSWhWmVquzr9JT8B4nkrF/smFefecdntF1wQ00XwWP/W6zJg+9nzjib8DolV9vW+B7e4x9e94nqGrRa3NUYOfsb8LiB93JM1o4goCzIFl5gMoV51sQZuv+O5c3/QadXRtYtLINbjhyZzW/2jq4/AD/N9qfGU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=jhJHF5kfM0cVe+RkIB8dEyszOtU3eaBDxOU11VNcLG4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_235853_040856_124B1082 
X-CRM114-Status: GOOD (  18.99  )
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Ulf Hansson <ulf.hansson@linaro.org>, heiko@sntech.de, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, Finley Xiao <finley.xiao@rock-chips.com>, linux-i2c@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Simon Xue <xxm@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKIMKgwqDCoCBUaGFua3MgdmVyeSBtdWNoIGZvciB5b3VyIHJldmlldy4K
Ck9uIDIwMjQvMTIvMjcgMTU6MzgsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gVHVl
LCBEZWMgMjQsIDIwMjQgYXQgMDU6NDk6MDNQTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90ZToKPj4g
VGhpcyBwYXRjaCBzZXQgYWRkcyByazM1NjIgU29DIGFuZCBpdHMgZXZiIHN1cHBvcnQuCj4+Cj4+
IFNwbGl0IG91dCBwYXRjaGVzIGJlbG9uZyB0byBkaWZmZXJlbnQgc3Vic3lzdGVtLgo+Pgo+PiBU
ZXN0IHdpdGggR01BQywgVVNCLCBQQ0llLCBFTU1DLCBTRCBDYXJkLgo+Pgo+PiBUaGlzIHBhdGNo
IHNldCBpcyBiYXNlIG9uIHRoZSBwYXRjaGUgc2V0IGZvciByazM1NzYgZXZiMSBzdXBwb3J0Lgo+
Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIFVwZGF0ZSBpbiBzb3J0IG9yZGVyCj4+IC0gcmVtb3Zl
IGdyZiBpbiBjcnUKPj4gLSBVcGRhdGUgc29tZSBwcm9wZXJ0aWVzIG9yZGVyCj4+Cj4+IEZpbmxl
eSBYaWFvICgyKToKPj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIGR0c2kgZm9y
IFJLMzU2MiBTb2MKPj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBSSzM1NjIgZXZiMiBk
ZXZpY2V0cmVlCj4+Cj4+IEtldmVyIFlhbmcgKDE1KToKPj4gICAgZHQtYmluZGluZ3M6IFBDSTog
ZHdjOiByb2NrY2hpcDogQWRkIHJrMzU2MiBzdXBwb3J0Cj4+ICAgIGR0LWJpbmRpbmdzOiBtbWM6
IEFkZCBzdXBwb3J0IGZvciByazM1NjIgZU1NQwo+PiAgICBkdC1iaW5kaW5nczogbW1jOiByb2Nr
Y2hpcC1kdy1tc2hjOiBBZGQgcmszNTYyIGNvbXBhdGlibGUgc3RyaW5nCj4+ICAgIGR0LWJpbmRp
bmdzOiBwb3dlcjogcm9ja2NoaXA6IEFkZCBiaW5kaW5ncyBmb3IgcmszNTYyCj4+ICAgIGR0LWJp
bmRpbmdzOiBpMmM6IGkyYy1yazN4OiBBZGQgcmszNTYyIGNvbXBhdGlibGUKPj4gICAgZHQtYmlu
ZGluZ3M6IGdwdTogQWRkIHJvY2tjaGlwLHJrMzU2Mi1tYWxpIGNvbXBhdGlibGUKPj4gICAgZHQt
YmluZGluZ3M6IHdhdGNoZG9nOiBBZGQgcmszNTYyIGNvbXBhdGlibGUKPj4gICAgZHQtYmluZGlu
Z3M6IHNwaTogQWRkIHJvY2tjaGlwLHJrMzU2Mi1zcGkgY29tcGF0aWJsZQo+PiAgICBkdC1iaW5k
aW5nczogc2VyaWFsOiBzbnBzLWR3LWFwYi11YXJ0OiBBZGQgc3VwcG9ydCBmb3IgcmszNTYyCj4+
ICAgIGR0LWJpbmRpbmdzOiB1c2I6IGR3YzM6IGFkZCBjb21wYXRpYmxlIGZvciByazM1NjIKPj4g
ICAgZHQtYmluZGluZ3M6IHB3bTogcm9ja2NoaXA6IEFkZCByb2NrY2hpcCxyazM1NjItcHdtCj4+
ICAgIGR0LWJpbmRpbmdzOiByb2NrY2hpcDogcG11OiBBZGQgcmszNTYyIGNvbXBhdGlibGUKPj4g
ICAgZHQtYmluZGluZ3M6IHNvYzogcm9ja2NoaXA6IEFkZCByazM1NjIgc3lzY29uIGNvbXBhdGli
bGVzCj4+ICAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgcmszNTYyIGV2YjIgYm9h
cmQKPj4gICAgZHQtYmluZGluZ3M6IG1mZDogc3lzY29uOiBBZGQgcmszNTYyIFFvUyByZWdpc3Rl
ciBjb21wYXRpYmxlCj4gWW91IHNxdWV6emVkIGhlcmUgbGlrZSAxMiBkaWZmZXJlbnQgc3Vic3lz
dGVtcy4gU29tZSBvZiB0aGVzZSBjaGFuZ2VzCj4gc3VnZ2VzdCBtaXNzaW5nIGRyaXZlcnMuCkkg
aGF2ZSBzcGxpdCBvdXQgYWxsIHRoZSBwYXRjaGVzIHdpdGggZHJpdmVyIGNoYW5nZSBhcyBzZXBh
cmF0ZSBwYXRjaCBzZXQuCkFsbCB0aGUgb3RoZXIgZHQtYmluZGluZyBwYXRjaGVzIGluIHRoaXMg
cGF0Y2hzZXQgaXMgcmUtdXNlIHRoZSBkcml2ZXIgCndpdGhvdXQgYW55IGNoYW5nZSwKYnV0IG9u
bHkgYWRkIGEgbmV3ICJyb2NrY2hpcCwgcmszNTYyLSIgYmFzZWQgY29tcGF0aWJsZSBlbnRyeSwg
YW5kIGFsc28gCm5vIG1vcmUgaW5mbwpuZWVkIHRvIGV4cGxhaW4gaW4gdGhlIGNvbW1pdCBtZXNz
YWdlIHdoaWNoIEkgdXN1YWxseSBjb3B5IGZyb20gY29tbWl0IAptc2cgYWxyZWFkeSBpbiB0cmVl
CmFuZCBjaGFuZ2UgdGhlIHNvYyB0byByazM1NjIuCkkgdGhpbmsgdGhpcyBwYXRjaCBzZXQgd2ls
bCBiZSBjbGVhciBlbm91Z2ggZm9yIHRoZSBuZXcgc29jL2JvYXJkIApzdXBwb3J0LiBTbyBkbyB5
b3UgbWVhbgpJIGhhdmUgdG8gc2VuZCB0aGUgMXN0fjE1dGggb2YgdGhpcyBwYXRjaHNldCBvbmUg
Ynkgb25lIHNlcGFyYXRlbHkgc28gCnRoYXQgdGhleSBjYW4gcmVhY2gKdG8gZGlmZmVyZW50IHN1
YnN5c3RlbXM/IEkgYmVsaWV2ZSB0aGVyZSBpcyBubyBtdWNoIHVzZWZ1bCBjaGFuZ2UgZm9yIAp0
aGUgY2MgbGlzdCBpcyBwcm92aWRlCmJ5IHRoZSB0b29sIGF1dG9tYXRpY2FsbHkgYW5kIHRoZSBj
b21taXQgbXNnIGNhbiB1cGRhdGUgYXMgVXdlJ3MgCnN1Z2dlc3Rpb246CgoJVGhlIFBXTSBjb3Jl
IG9uIFJvY2tjaGlwJ3MgUkszNTYyIGlzIHRoZSBzYW1lIGFzIHRoZSBvbmUgYWxyZWFkeQoJaW5j
bHVkZWQgaW4gUkszMzI4LiBFeHRlbmQgdGhlIGJpbmRpbmcgYWNjb3JkaW5nbHkgdG8gYWxsb3cK
CgkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjItcHdtIiwgInJvY2tjaGlwLHJrMzMyOC1w
d20iOwoKVGhhbmtzLAotIEtldmVyCgoKPgo+IFBsZWFzZSByZWFkIGJhc2ljIHVwc3RyZWFtaW5n
IGd1aWRlLCBzb21lIHByZXZpb3VzIGRpc2N1c3Npb25zIGFuZCBnZXQKPiBpbnRlcm5hbCByb2Nr
LWNoaXBzIGhlbHAgc28gd2Ugd2FudCByZXBlYXQgYmFzaWNzIG92ZXIgYW5kIG92ZXIuCj4KPiBC
aW5kaW5ncyBhcmUgd2l0aCBkcml2ZXJzLiBTZW5kIHRoZW0gdG8gcmVzcGVjdGl2ZSBzdWJzeXN0
ZW1zLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
