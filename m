Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0753BCA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 02:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NecwJLHaqLf+tgiIw072QTnm12jNsIhcFiTjOEoaLmg=; b=cOo1bTpDsQRXdf
	0CXqAUsvIHybDI5jFhZxy8D3NFYDicWWKStq1s2t/PVo25/yhnbuuKpatM4/2BAPJLZUWZklbi/zq
	DJAbRLTv77ZXjavNQaF9fr0Hn+hZjGulrrIOq+1/g7+xrcKtY/9SWG/zxAwrQ+UvTyZQM9Xp2LMeQ
	h+6joQ+dWmcafcvnGMZkkjGwa4RSaUTyJOtS+WR3dz7zd5zj6xb8obiOUgir+qf1GdUSYjV11cTy8
	uTZ8j6PMUMJp43IWs/CeFYaG3ypF2Z2CXS8vxZ8xQir81o3+But98MGqgZDmPPPdQ4Y4UHMlTDObZ
	kmDTXApM85m7mHnWGT0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwApC-0000000BijQ-3xG0;
	Wed, 10 Sep 2025 02:44:46 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwAp9-0000000BiJ8-2X9f;
	Wed, 10 Sep 2025 02:44:45 +0000
X-QQ-mid: zesmtpip2t1757472216t68456359
X-QQ-Originating-IP: 17bfSa2F654IBMiotK29/iMQ0Y0VqjXIV2xOVHSsz2c=
Received: from [IPV6:240f:10b:7440:1:e5ed:636d ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 10 Sep 2025 10:43:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1856156394840416114
Message-ID: <AF1546E3BE23C6D5+08234a44-4321-45da-9c74-5690f3437e03@radxa.com>
Date: Wed, 10 Sep 2025 11:43:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
To: Jonas Karlman <jonas@kwiboo.se>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <B055BC95C67D129C+d7a2ff39-8367-48cf-8697-f12fd9f885a4@radxa.com>
 <7d3c3b29-f89f-4801-8fd7-d6d0645095af@kwiboo.se> <17232684.geO5KgaWL5@diego>
 <a443fca9-e660-4a7a-b637-ec840ac8ed1e@kwiboo.se>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a443fca9-e660-4a7a-b637-ec840ac8ed1e@kwiboo.se>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NDtUtlvFer7vF80qLC4s/JK3islawpqQwIo1XTtrY7c+MywMujiMYhNh
	/5vTvNeKr3IptPQTnhzXcbxrMkLyNiiWb82VcyIUyaeEPDxX7YbIJPN+9gSDUaQfUkBaxcD
	EJXpigyyzk7US7RwWXQoJwvKqJoYgYidl5VI+qY9/vEdvVwq33cLKn2CNiBIJyFLm1GCF1C
	/5dQmdnQZeJYWFP3IkEBjZph1ZfISnvA/f7h3sBfVGs3Csb8NE336SkndWkZR8nXDQQk3tk
	gjumFae8smy+rETr+2L25FdzVX3tTXEtVXjRTPbUkP/ViuYGutLh1N2CmrBaMWg3zpWpvNj
	YG+5LkfOn8y23bvfvBJ002uGcRVp2h2KbmQgFrqgllkwKbefTVxsPT/SxpCZByn4DQaaF1T
	VegZyJoOuGXd8j3TjAAuYJRpGiEuuPIJH037TKdozH2REIynME6SXg08dztLnPkSRI7TGKk
	AuW5t/ehbsj83nzyaMXVqbZzZYvcrabURHmGTpAz13YRC09XiVg/k5feWSIcwuOzkkJIJn6
	YjuFAjd3jK49BgYeVJXalp0vJmWWwRz81Z36EVxDd5IHYcWThn/JG0ejVMZmwXmTY2Gtd0P
	fELJ/SSuEjuYJfg/PMfRLRmrmoma1MOm5wK8q5rZKQMd+gWBohHvog5K3You1JnrgW0fL9T
	bMbRbtYoh16GsRHkZwVdL4a3rJzar2KrCzl1xC1dcAmHGAwF3FQmQ1cevDmJ2OaBjPksfki
	A4W2YPnpzylrJXQ/mML+2sEx3ZTR4h+cdSUrU5b3WNmw7cgOgn1MsPVe4gzdVYfveNsxDed
	8xL2lLnq73YT01B373CZmZXF5zWkw/Rv+wAhNX07wx6WSsmComnrWHju9RoTiuBOxCx8G34
	S5bXweQJxujbGyAa+kGMQbZOv94kLMs4CvXVi7LfdAqWaTg1NSR+04AGdwbyjq5dXU0Ae0Q
	CxIgiaarNTR86Db1+kstUTXuuV9Sg49FY+vJ9EQj/evJP1UtsroQVWj+A
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_194443_994827_6EE1D5B7 
X-CRM114-Status: GOOD (  18.33  )
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

SGkgSm9uYXMsIEhlaWtvLAoKT24gOS8xMC8yNSAwNDozNiwgSm9uYXMgS2FybG1hbiB3cm90ZToK
PiBPbiA5LzkvMjAyNSA1OjM5IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gQW0gRGllbnN0
YWcsIDkuIFNlcHRlbWJlciAyMDI1LCAxNjo0ODoyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVy
emVpdCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4+PiBPbiA5LzkvMjAyNSAyOjI4IFBNLCBGVUtB
VU1JIE5hb2tpIHdyb3RlOgo+Pj4+IEhpIEpvbmFzLAo+Pj4+Cj4+Pj4gT24gNy8yNy8yNSAyMzo0
NCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPj4+Pj4gVGhlIFJhZHhhIEUyNEMgaXMgYSBjb21wYWN0
LCBoaWdoLXBlcmZvcm1hbmNlIG5ldHdvcmsgY29tcHV0ZXIKPj4+Pj4gZGV2ZWxvcGVkIGJ5IFJh
ZHhhLCBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTI4QSBTb0MuCj4+Pj4+Cj4+Pj4+IEFkZCBp
bml0aWFsIGRldmljZSB0cmVlIGZvciB0aGUgUmFkeGEgRTI0Qy4KPj4+Pj4KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+Pj4+PiBSZXZpZXdlZC1i
eTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgo+Pj4+PiAtLS0KPj4+Pj4gU2NoZW1hdGlj
czogaHR0cHM6Ly9kbC5yYWR4YS5jb20vZS9lMjRjL2RvY3MvcmFkeGFfZTI0Y192MTIwMF9zY2hl
bWF0aWMucGRmCj4+Pj4+IC0tLQo+Pj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+Pj4+PiAgICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTI4LXJhZHhhLWUyNGMuZHRzICAgfCA1MTkgKysrKysrKysrKysrKysrKysrCj4+Pj4+ICAg
IDIgZmlsZXMgY2hhbmdlZCwgNTIwIGluc2VydGlvbnMoKykKPj4+Pj4gICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRz
Cj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+PiBpbmRl
eCAwNjYyZmNmMDA2MjguLmRjNjJmZDUzMDViZSAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+Pj4+IEBAIC05Miw2ICs5Miw3IEBAIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazMzOTlwcm8tcm9jay1waS1uMTAuZHRiCj4+Pj4+ICAgIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1MjgtYXJtc29tLXNpZ2UxLmR0Ygo+Pj4+
PiAgICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTI4LW5hbm9waS16ZXJvMi5k
dGIKPj4+Pj4gICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yYWR4YS1l
MjBjLmR0Ygo+Pj4+PiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yYWR4
YS1lMjRjLmR0Ygo+Pj4+PiAgICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTI4
LXJvY2stMmEuZHRiCj4+Pj4+ICAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1
Mjgtcm9jay0yZi5kdGIKPj4+Pj4gICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzU2Mi1ldmIyLXYxMC5kdGIKPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMKPj4+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+
Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yMjVmMmIwYzUzMzkKPj4+Pj4gLS0tIC9kZXYvbnVsbAo+
Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1yYWR4YS1lMjRj
LmR0cwo+Pj4+PiBAQCAtMCwwICsxLDUxOSBAQAo+Pj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+Pj4+ICsKPj4+Pj4gKy9kdHMtdjEvOwo+Pj4+PiAr
Cj4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KPj4+Pj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9sZWRzL2NvbW1vbi5oPgo+Pj4+PiArI2luY2x1ZGUgInJrMzUyOC5k
dHNpIgo+Pj4+PiArCj4+Pj4+ICsvIHsKPj4+Pj4gKwltb2RlbCA9ICJSYWR4YSBFMjRDIjsKPj4+
Pj4gKwljb21wYXRpYmxlID0gInJhZHhhLGUyNGMiLCAicm9ja2NoaXAscmszNTI4IjsKPj4+Pj4g
Kwo+Pj4+PiArCWFsaWFzZXMgewo+Pj4+PiArCQlldGhlcm5ldDAgPSAmZ21hYzE7Cj4+Pj4+ICsJ
CWkyYzAgPSAmaTJjMDsKPj4+Pj4gKwkJaTJjMSA9ICZpMmMxOwo+Pj4+PiArCQlpMmM1ID0gJmky
YzU7Cj4+Pj4+ICsJCW1tYzAgPSAmc2RoY2k7Cj4+Pj4+ICsJCW1tYzEgPSAmc2RtbWM7Cj4+Pj4+
ICsJCXJ0YzAgPSAmaHltODU2MzsKPj4+Pj4gKwkJcnRjMSA9ICZyazgwNTsKPj4+Pj4gKwkJc2Vy
aWFsMCA9ICZ1YXJ0MDsKPj4+Pj4gKwl9Owo+Pj4+PiArCj4+Pj4+ICsJY2hvc2VuIHsKPj4+Pj4g
KwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDoxNTAwMDAwbjgiOwo+Pj4+PiArCX07Cj4+Pj4+ICsK
Pj4+Pj4gKwlhZGMta2V5cyB7Cj4+Pj4+ICsJCWNvbXBhdGlibGUgPSAiYWRjLWtleXMiOwo+Pj4+
PiArCQlpby1jaGFubmVscyA9IDwmc2FyYWRjIDA+Owo+Pj4+PiArCQlpby1jaGFubmVsLW5hbWVz
ID0gImJ1dHRvbnMiOwo+Pj4+PiArCQlrZXl1cC10aHJlc2hvbGQtbWljcm92b2x0ID0gPDE4MDAw
MDA+Owo+Pj4+PiArCQlwb2xsLWludGVydmFsID0gPDEwMD47Cj4+Pj4+ICsKPj4+Pj4gKwkJYnV0
dG9uLW1hc2tyb20gewo+Pj4+PiArCQkJbGFiZWwgPSAiTUFTS1JPTSI7Cj4+Pj4+ICsJCQlsaW51
eCxjb2RlID0gPEtFWV9TRVRVUD47Cj4+Pj4+ICsJCQlwcmVzcy10aHJlc2hvbGQtbWljcm92b2x0
ID0gPDA+Owo+Pj4+PiArCQl9Owo+Pj4+PiArCX07Cj4+Pj4+ICsKPj4+Pj4gKwlncGlvLWtleXMg
ewo+Pj4+PiArCQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7Cj4+Pj4+ICsJCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+ICsJCXBpbmN0cmwtMCA9IDwmZ3BpbzBfYTBfdXNlcj47Cj4+
Pj4+ICsKPj4+Pj4gKwkJYnV0dG9uLXVzZXIgewo+Pj4+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIFJL
X1BBMCBHUElPX0FDVElWRV9MT1c+Owo+Pj4+PiArCQkJbGFiZWwgPSAiVVNFUiI7Cj4+Pj4+ICsJ
CQlsaW51eCxjb2RlID0gPEJUTl8xPjsKPj4+Pgo+Pj4+IEkgcHJlZmVyIHRvIGFzc2lnbiBCVE5f
MCB0byB0aGUgMXN0IGJ1dHRvbiA6KQo+Pj4KPj4+IFRoZSBFMjBDIChhbmQgb3RoZXIgUksgYm9h
cmRzKSBhbHJlYWR5IHVzZSBCVE5fMSBmb3IgdXNlciBidXR0b24sIGl0Cj4+PiBvbmx5IHNlZW0g
dG8gYmUgdGhlIHJlY2VudGx5IGFkZGVkIEU1NEMgdGhhdCBpcyB1c2luZyBCVE5fMC4KPj4+Cj4+
PiBGb3IgY29uc2lzdGVuY3kgSSBzdWdnZXN0IHdlIGtlZXAgdXNpbmcgQlROXzEgZm9yIHRoaXMg
dXNlciBidXR0b24gYW5kCj4+PiBwb3NzaWJsZSBmaXh1cCBFNTRDLCBpZiB5b3Ugd2FudCB0byB1
c2Ugc2FtZSBidXR0b24gZm9yIGFsbCB2YXJpYW50cy4KPj4KPj4gWWVwLCB0aGF0IHdvdWxkIGFs
c28ga2VlcCB0aGUgYW1vdW50IG9mIHVzZXJzcGFjZS1mYWNpbmcgY2hhbmdlcwo+PiBtaW5pbWFs
Lgo+IAo+IEkgbWl4ZWQgdXAgZTU0YyBhbmQgZTUyYyBzbyBteSBzdGF0ZW1lbnQgd2FzIG5vdCBm
dWxseSBjb3JyZWN0IGFib3ZlLAo+IGhvd2V2ZXIgdGhlcmUgaXMgYSBtaXhlZCB1c2Ugb2YgQlRO
XzEgYW5kIEJUTl8wIGZvciB1c2VyIGJ1dHRvbjoKPiAKPiAtIHJrMzU4OHMtbmFub3BpLXI2Yy9y
NnMgdXNlcyBCVE5fMSwgYWRkZWQgaW4gdjYuOS1yYzEKPiAtIHJrMzU4OC1mcmllbmRseWVsZWMt
Y20zNTg4LW5hcyB1c2VzIEJUTl8xLCBhZGRlZCBpbiB2Ni4xMS1yYzEKPiAtIHJrMzU4Mi1yYWR4
YS1lNTJjIHVzZXMgQlROXzAsIGFkZGVkIGluIHY2LjE0LXJjMQo+IC0gcmszNTI4LXJhZHhhLWUy
MGMgdXNlcyBCVE5fMSwgYWRkZWQgaW4gdjYuMTUtcmMxCj4gLSByazM1NzYtbmFub3BpLW01IHVz
ZXMgQlROXzEsIGFkZGVkIGluIHY2LjE3LXJjMQo+IAo+IE1ham9yaXR5IHNlZW0gdG8gYmUgdXNp
bmcgQlROXzEgZm9yIGEgdXNlciBidXR0b24uCgpJZiB3ZSBjYW4gdW5pZnkgdG8gQlROXzEgZXZl
biBpZiBpdCBicmVha3MgYmFja3dhcmQgY29tcGF0aWJpbGl0eSwgSSAKd291bGRuJ3QgYmUgb3Bw
b3NlZCB0byBpdC4KCihJIHJlbWVtYmVyIGEgInN5bmMgd2l0aCBvdGhlcnMiIHBhdGNoIGJlaW5n
IHJlamVjdGVkIGluIHRoZSBwYXN0LCBidXQgSSAKbWlnaHQgYmUgcmVtZW1iZXJpbmcgaXQgd3Jv
bmcuKQoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hl
bnpoZW4pIENvLiwgTHRkLgoKPiBSZWdhcmRzLAo+IEpvbmFzCj4gCj4+Cj4+IEhlaWtvCj4+Cj4+
Cj4+Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
