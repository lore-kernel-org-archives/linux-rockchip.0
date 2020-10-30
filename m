Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC702C00A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 15:29:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 055F220725
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 15:29:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hTx74myp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 055F220725
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DyyAhpJy6bxFngvOSj+o/AfSFYFNfPB2ev4utnqyKIE=; b=hTx74mypXduABngFpC4RmAmtx
	rNL0ClTWcbEoM4Vy7piDLbb7chW03O+08pVJGA64QRNAvHew7L0hHYrMUS1j/Tlrsj6mkVywe2bYs
	gfUTs6V7oceuq3gmG42rR2SuyeFA+m1UrcsR9pozz4d3xbuWNH3IRjD0WTbtskhYWN/g2kjWXK5ZH
	t13yJ2Zywait16lVx3Vjn2gonA0D1QlLy3UbCF/FrbxJkL2vFdXgR35X2M33Dx9tydhJTI1orIkZB
	noiiztwbw3Rli76qFcxscn/Jmg7SqZjiuTLsTMTDClzTYnFyUWy/FeAZzYOP0O0o2gs1Dk2wP4Mdl
	OidMtOJiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYWKk-0006nQ-Jm; Fri, 30 Oct 2020 15:28:54 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYWKD-0006Sn-8R
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 15:28:43 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 5ABB7C70;
 Fri, 30 Oct 2020 23:28:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.108] (unknown [112.49.232.236])
 by smtp.263.net (postfix) whith ESMTP id
 P27840T140553129006848S1604071673546757_; 
 Fri, 30 Oct 2020 23:27:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <15ecead2377938ea1bbab8a4e473d5ec>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: sbabic@denx.de
X-SENDER-IP: 112.49.232.236
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 4/8] board: engicam: Attach i.MX6 common code
To: Jagan Teki <jagan@amarulasolutions.com>,
 philipp.tomsich@theobroma-systems.com, sjg@chromium.org
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
 <20201028133348.241839-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0f5e8d72-fe63-70e5-6ed5-333d473e3c7d@rock-chips.com>
Date: Fri, 30 Oct 2020 23:27:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201028133348.241839-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_112822_716264_4E30F5D7 
X-CRM114-Status: GOOD (  19.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Stefano Babic <sbabic@denx.de>,
 u-boot@lists.denx.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvMTAvMjgg5LiL5Y2IOTozMywgSmFnYW4gVGVraSB3cm90ZToKPiBUaGUgZXhpc3Rp
bmcgY29tbW9uIGNvZGUgZm9yIEVuZ2ljYW0gYm9hcmRzIHVzZXMgaS5NWDYsCj4gc28gYXR0YWNo
IHRoYXQgaW50byBpLk1YNiBFbmdpY2FtIGJvYXJkcyBzby10aGF0IGFkZGluZwo+IG5ldyBTb0Mg
dmFyaWFudHMgb2YgRW5naWNhbSBib2FyZHMgYmVjb21lIG1lYW5pbmdmdWwuCj4KPiBBZGQgc3Vw
cG9ydCBmb3IgaXQuCj4KPiBDYzogU3RlZmFubyBCYWJpYyA8c2JhYmljQGRlbnguZGU+Cj4gU2ln
bmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmll
d2VkLWJ5OiBLZXZlciBZYW5nPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0g
S2V2ZXIKPiAtLS0KPiBDaGFuZ2VzIGZvciB2NDoKPiAtIG5vbmUKPgo+ICAgYm9hcmQvZW5naWNh
bS9jb21tb24vS2NvbmZpZyAgfCA4ICsrKysrKysrCj4gICBib2FyZC9lbmdpY2FtL2NvbW1vbi9N
YWtlZmlsZSB8IDcgKysrKystLQo+ICAgYm9hcmQvZW5naWNhbS9pbXg2cS9LY29uZmlnICAgfCAy
ICsrCj4gICBib2FyZC9lbmdpY2FtL2lteDZ1bC9LY29uZmlnICB8IDIgKysKPiAgIDQgZmlsZXMg
Y2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBib2FyZC9lbmdpY2FtL2NvbW1vbi9LY29uZmlnCj4KPiBkaWZmIC0tZ2l0IGEvYm9h
cmQvZW5naWNhbS9jb21tb24vS2NvbmZpZyBiL2JvYXJkL2VuZ2ljYW0vY29tbW9uL0tjb25maWcK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjM4MzI4ZmQ1ZWEKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvYm9hcmQvZW5naWNhbS9jb21tb24vS2NvbmZpZwo+IEBAIC0w
LDAgKzEsOCBAQAo+ICtjb25maWcgSU1YNl9FTkdJQ0FNX0NPTU1PTgo+ICsJYm9vbCAiRW5naWNh
bSBpLk1YNiBDb21tb24gY29kZSIKPiArCWRlcGVuZHMgb24gU1BMICYmIE1YNgo+ICsJZGVmYXVs
dCB5IGlmIFRBUkdFVF9NWDZRX0VOR0lDQU0gfHwgVEFSR0VUX01YNlVMX0VOR0lDQU0KPiArCWhl
bHAKPiArCSAgQ29tbW9uIFNQTCBhbmQgVS1Cb290IHByb3BlciBjb2RlIGZvciBFbmdpY2FtIGku
TVg2IHRhcmdldHMuCj4gKwo+ICsJICBFbmFibGUgaXQgaW4gYm9hcmQgS2NvbmZpZyBpZiBpdCB1
c2VzIGkuTVg2IHZhcmlhbnQgRW5naWNhbSBib2FyZHMuCj4gZGlmZiAtLWdpdCBhL2JvYXJkL2Vu
Z2ljYW0vY29tbW9uL01ha2VmaWxlIGIvYm9hcmQvZW5naWNhbS9jb21tb24vTWFrZWZpbGUKPiBp
bmRleCBiMzkyYmY2Y2IxLi4xNWYwZWFhMWVjIDEwMDY0NAo+IC0tLSBhL2JvYXJkL2VuZ2ljYW0v
Y29tbW9uL01ha2VmaWxlCj4gKysrIGIvYm9hcmQvZW5naWNhbS9jb21tb24vTWFrZWZpbGUKPiBA
QCAtMSw1ICsxLDggQEAKPiAgICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4g
ICAjIENvcHlyaWdodCAoQykgMjAxNiBBbWFydWxhIFNvbHV0aW9ucyBCLlYuCj4gICAKPiAtb2Jq
LXkgOj0gYm9hcmQubwo+IC1vYmotJChDT05GSUdfU1BMX0JVSUxEKSArPSBzcGwubwo+ICtpZmRl
ZiBDT05GSUdfU1BMX0JVSUxECj4gK29iai0kKENPTkZJR19JTVg2X0VOR0lDQU1fQ09NTU9OKSAr
PSBzcGwubwo+ICtlbHNlCj4gK29iai0kKENPTkZJR19JTVg2X0VOR0lDQU1fQ09NTU9OKSArPSBi
b2FyZC5vCj4gK2VuZGlmCj4gZGlmZiAtLWdpdCBhL2JvYXJkL2VuZ2ljYW0vaW14NnEvS2NvbmZp
ZyBiL2JvYXJkL2VuZ2ljYW0vaW14NnEvS2NvbmZpZwo+IGluZGV4IDQ4ZWI2MGMwOWEuLmZhYjhk
YTBlNzMgMTAwNjQ0Cj4gLS0tIGEvYm9hcmQvZW5naWNhbS9pbXg2cS9LY29uZmlnCj4gKysrIGIv
Ym9hcmQvZW5naWNhbS9pbXg2cS9LY29uZmlnCj4gQEAgLTksNCArOSw2IEBAIGNvbmZpZyBTWVNf
VkVORE9SCj4gICBjb25maWcgU1lTX0NPTkZJR19OQU1FCj4gICAJZGVmYXVsdCAiaW14Ni1lbmdp
Y2FtIgo+ICAgCj4gK3NvdXJjZSAiYm9hcmQvZW5naWNhbS9jb21tb24vS2NvbmZpZyIKPiArCj4g
ICBlbmRpZgo+IGRpZmYgLS1naXQgYS9ib2FyZC9lbmdpY2FtL2lteDZ1bC9LY29uZmlnIGIvYm9h
cmQvZW5naWNhbS9pbXg2dWwvS2NvbmZpZwo+IGluZGV4IGU5MWRkMTU5NzAuLjU4ZjI1ZDA2MjMg
MTAwNjQ0Cj4gLS0tIGEvYm9hcmQvZW5naWNhbS9pbXg2dWwvS2NvbmZpZwo+ICsrKyBiL2JvYXJk
L2VuZ2ljYW0vaW14NnVsL0tjb25maWcKPiBAQCAtOSw0ICs5LDYgQEAgY29uZmlnIFNZU19WRU5E
T1IKPiAgIGNvbmZpZyBTWVNfQ09ORklHX05BTUUKPiAgIAlkZWZhdWx0ICJpbXg2LWVuZ2ljYW0i
Cj4gICAKPiArc291cmNlICJib2FyZC9lbmdpY2FtL2NvbW1vbi9LY29uZmlnIgo+ICsKPiAgIGVu
ZGlmCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
