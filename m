Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAEDECAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 19:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiFDaTH2YZPpUeMrF47wVyUvCSruqRMIMNjfPMgow18=; b=LOE0EiGH2iZxvf
	Q+jWq3ciHQ21tno8KO/oUOpSjs9mq9rj1bOhKagnipcwFe0qRyJHndfICyojGJIo06bsJT1HA/WcB
	3f30bjNt6D/hSk3Ldqn+aomnrktGsRxupqcw8W28IqlhidduCKIe/plqp7GhUIoDHE5w+46F2DNzP
	1v95y4nfcSnNxiyeXYoHLLhtIc8Hygf1SrCbVumb+bQVVsAN40bw6wJRn09Kp1e8FgKEr49Yy3F3K
	U3Ri+3XF9+j+IPKv27KRSB4PnH6ALrAxnhc6cf7E+bpjpOMfozjIa57tbNoljQK86LoukB1N63vsZ
	xpvoXjbUWDZCxTWH131Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw499-00000009kOh-0nKg;
	Tue, 09 Sep 2025 19:36:55 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw495-00000009kNw-17X4
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 19:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1757446609;
 bh=rwqoGtXjB1J++h8Zyy8TQBXX6o5DAsVUE4Q8MuslRI0=;
 b=OFfmGFf+DSTaRnQtHRgyhcVPO+nRMO7nfBbG+pII6Sw0EaIkfgIAKrI0FB01Wbx+LL+bn3C90
 7efzAcM30OwFoH2pRh8qzMeYmvdk8go9Qw7jCK2G4DS/NlAYpniiuv5TJRVnsQfo3BFsd3Ow6gN
 XxxJSm4tn60nbrExecYzl7KL7bdV0WNL7abTXCC3yvZd+x9enZxOY5L+lw4MqdgBfqGx5Vzg+pB
 YGsZ8KuRN+LHsiMI3fBoOq51WKOlTpBlZiRWuRuD1MG5VyWvJD9XnKaGR+OCuzixHWEQra94HwW
 h/1B6mMaouwM6ezXF80QN414zHsu7ARVJNJj5BrDWYfg==
X-Forward-Email-ID: 68c081cdd4f0dc47f6d79244
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <a443fca9-e660-4a7a-b637-ec840ac8ed1e@kwiboo.se>
Date: Tue, 9 Sep 2025 21:36:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <B055BC95C67D129C+d7a2ff39-8367-48cf-8697-f12fd9f885a4@radxa.com>
 <7d3c3b29-f89f-4801-8fd7-d6d0645095af@kwiboo.se> <17232684.geO5KgaWL5@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <17232684.geO5KgaWL5@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_123651_706054_C2C1D4B9 
X-CRM114-Status: GOOD (  15.01  )
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

T24gOS85LzIwMjUgNTozOSBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDkuIFNlcHRlbWJlciAyMDI1LCAxNjo0ODoyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVp
dCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4+IE9uIDkvOS8yMDI1IDI6MjggUE0sIEZVS0FVTUkg
TmFva2kgd3JvdGU6Cj4+PiBIaSBKb25hcywKPj4+Cj4+PiBPbiA3LzI3LzI1IDIzOjQ0LCBKb25h
cyBLYXJsbWFuIHdyb3RlOgo+Pj4+IFRoZSBSYWR4YSBFMjRDIGlzIGEgY29tcGFjdCwgaGlnaC1w
ZXJmb3JtYW5jZSBuZXR3b3JrIGNvbXB1dGVyCj4+Pj4gZGV2ZWxvcGVkIGJ5IFJhZHhhLCBiYXNl
ZCBvbiB0aGUgUm9ja2NoaXAgUkszNTI4QSBTb0MuCj4+Pj4KPj4+PiBBZGQgaW5pdGlhbCBkZXZp
Y2UgdHJlZSBmb3IgdGhlIFJhZHhhIEUyNEMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKb25h
cyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4+Pj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBMdW5u
IDxhbmRyZXdAbHVubi5jaD4KPj4+PiAtLS0KPj4+PiBTY2hlbWF0aWNzOiBodHRwczovL2RsLnJh
ZHhhLmNvbS9lL2UyNGMvZG9jcy9yYWR4YV9lMjRjX3YxMjAwX3NjaGVtYXRpYy5wZGYKPj4+PiAt
LS0KPj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8
ICAgMSArCj4+Pj4gICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRz
ICAgfCA1MTkgKysrKysrKysrKysrKysrKysrCj4+Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDUyMCBp
bnNlcnRpb25zKCspCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+IGluZGV4IDA2NjJmY2YwMDYyOC4uZGM2MmZkNTMwNWJl
IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUK
Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+Pj4gQEAg
LTkyLDYgKzkyLDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OXByby1y
b2NrLXBpLW4xMC5kdGIKPj4+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1
MjgtYXJtc29tLXNpZ2UxLmR0Ygo+Pj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzUyOC1uYW5vcGktemVybzIuZHRiCj4+Pj4gICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJ
UCkgKz0gcmszNTI4LXJhZHhhLWUyMGMuZHRiCj4+Pj4gK2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazM1MjgtcmFkeGEtZTI0Yy5kdGIKPj4+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1Mjgtcm9jay0yYS5kdGIKPj4+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1Mjgtcm9jay0yZi5kdGIKPj4+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjItZXZiMi12MTAuZHRiCj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMKPj4+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjI1ZjJiMGM1MzM5Cj4+Pj4gLS0tIC9k
ZXYvbnVsbAo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJh
ZHhhLWUyNGMuZHRzCj4+Pj4gQEAgLTAsMCArMSw1MTkgQEAKPj4+PiArLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+Pj4gKwo+Pj4+ICsvZHRzLXYxLzsKPj4+
PiArCj4+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+Pj4+ICsjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvbGVkcy9jb21tb24uaD4KPj4+PiArI2luY2x1ZGUgInJrMzUyOC5k
dHNpIgo+Pj4+ICsKPj4+PiArLyB7Cj4+Pj4gKwltb2RlbCA9ICJSYWR4YSBFMjRDIjsKPj4+PiAr
CWNvbXBhdGlibGUgPSAicmFkeGEsZTI0YyIsICJyb2NrY2hpcCxyazM1MjgiOwo+Pj4+ICsKPj4+
PiArCWFsaWFzZXMgewo+Pj4+ICsJCWV0aGVybmV0MCA9ICZnbWFjMTsKPj4+PiArCQlpMmMwID0g
JmkyYzA7Cj4+Pj4gKwkJaTJjMSA9ICZpMmMxOwo+Pj4+ICsJCWkyYzUgPSAmaTJjNTsKPj4+PiAr
CQltbWMwID0gJnNkaGNpOwo+Pj4+ICsJCW1tYzEgPSAmc2RtbWM7Cj4+Pj4gKwkJcnRjMCA9ICZo
eW04NTYzOwo+Pj4+ICsJCXJ0YzEgPSAmcms4MDU7Cj4+Pj4gKwkJc2VyaWFsMCA9ICZ1YXJ0MDsK
Pj4+PiArCX07Cj4+Pj4gKwo+Pj4+ICsJY2hvc2VuIHsKPj4+PiArCQlzdGRvdXQtcGF0aCA9ICJz
ZXJpYWwwOjE1MDAwMDBuOCI7Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+PiArCWFkYy1rZXlzIHsKPj4+
PiArCQljb21wYXRpYmxlID0gImFkYy1rZXlzIjsKPj4+PiArCQlpby1jaGFubmVscyA9IDwmc2Fy
YWRjIDA+Owo+Pj4+ICsJCWlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7Cj4+Pj4gKwkJa2V5
dXAtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4+PiArCQlwb2xsLWludGVydmFs
ID0gPDEwMD47Cj4+Pj4gKwo+Pj4+ICsJCWJ1dHRvbi1tYXNrcm9tIHsKPj4+PiArCQkJbGFiZWwg
PSAiTUFTS1JPTSI7Cj4+Pj4gKwkJCWxpbnV4LGNvZGUgPSA8S0VZX1NFVFVQPjsKPj4+PiArCQkJ
cHJlc3MtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwwPjsKPj4+PiArCQl9Owo+Pj4+ICsJfTsKPj4+
PiArCj4+Pj4gKwlncGlvLWtleXMgewo+Pj4+ICsJCWNvbXBhdGlibGUgPSAiZ3Bpby1rZXlzIjsK
Pj4+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+ICsJCXBpbmN0cmwtMCA9IDwm
Z3BpbzBfYTBfdXNlcj47Cj4+Pj4gKwo+Pj4+ICsJCWJ1dHRvbi11c2VyIHsKPj4+PiArCQkJZ3Bp
b3MgPSA8JmdwaW8wIFJLX1BBMCBHUElPX0FDVElWRV9MT1c+Owo+Pj4+ICsJCQlsYWJlbCA9ICJV
U0VSIjsKPj4+PiArCQkJbGludXgsY29kZSA9IDxCVE5fMT47Cj4+Pgo+Pj4gSSBwcmVmZXIgdG8g
YXNzaWduIEJUTl8wIHRvIHRoZSAxc3QgYnV0dG9uIDopCj4+Cj4+IFRoZSBFMjBDIChhbmQgb3Ro
ZXIgUksgYm9hcmRzKSBhbHJlYWR5IHVzZSBCVE5fMSBmb3IgdXNlciBidXR0b24sIGl0Cj4+IG9u
bHkgc2VlbSB0byBiZSB0aGUgcmVjZW50bHkgYWRkZWQgRTU0QyB0aGF0IGlzIHVzaW5nIEJUTl8w
Lgo+Pgo+PiBGb3IgY29uc2lzdGVuY3kgSSBzdWdnZXN0IHdlIGtlZXAgdXNpbmcgQlROXzEgZm9y
IHRoaXMgdXNlciBidXR0b24gYW5kCj4+IHBvc3NpYmxlIGZpeHVwIEU1NEMsIGlmIHlvdSB3YW50
IHRvIHVzZSBzYW1lIGJ1dHRvbiBmb3IgYWxsIHZhcmlhbnRzLgo+IAo+IFllcCwgdGhhdCB3b3Vs
ZCBhbHNvIGtlZXAgdGhlIGFtb3VudCBvZiB1c2Vyc3BhY2UtZmFjaW5nIGNoYW5nZXMKPiBtaW5p
bWFsLgoKSSBtaXhlZCB1cCBlNTRjIGFuZCBlNTJjIHNvIG15IHN0YXRlbWVudCB3YXMgbm90IGZ1
bGx5IGNvcnJlY3QgYWJvdmUsCmhvd2V2ZXIgdGhlcmUgaXMgYSBtaXhlZCB1c2Ugb2YgQlROXzEg
YW5kIEJUTl8wIGZvciB1c2VyIGJ1dHRvbjoKCi0gcmszNTg4cy1uYW5vcGktcjZjL3I2cyB1c2Vz
IEJUTl8xLCBhZGRlZCBpbiB2Ni45LXJjMQotIHJrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LW5h
cyB1c2VzIEJUTl8xLCBhZGRlZCBpbiB2Ni4xMS1yYzEKLSByazM1ODItcmFkeGEtZTUyYyB1c2Vz
IEJUTl8wLCBhZGRlZCBpbiB2Ni4xNC1yYzEKLSByazM1MjgtcmFkeGEtZTIwYyB1c2VzIEJUTl8x
LCBhZGRlZCBpbiB2Ni4xNS1yYzEKLSByazM1NzYtbmFub3BpLW01IHVzZXMgQlROXzEsIGFkZGVk
IGluIHY2LjE3LXJjMQoKTWFqb3JpdHkgc2VlbSB0byBiZSB1c2luZyBCVE5fMSBmb3IgYSB1c2Vy
IGJ1dHRvbi4KClJlZ2FyZHMsCkpvbmFzCgo+IAo+IEhlaWtvCj4gCj4gCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
