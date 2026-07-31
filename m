Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B77F0C5516D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2YctBUmBIbzY7LnDkdUSNCzrvoSOHIHFu6wCxqWteo=; b=WnZxY0oeL0Y+uX
	qBA9q5b3YcGD2NiR3pRaXBfiKLuT/7VxhqcZ2fTi6lAFbYouJSzfpIgyyewxFwaCPuqYf5k9q7sxc
	tP2d/pAqR99C4ipZl9kFpQC63mK7XgtgUNlkFn8puCIiTEbE3Y/xIXbiNJy159nKHHYNU9DtcUaSL
	cmDMUVk9QCuRTCZNUEyciNw2iy7TllC5OhxDLe6ypu5Ra7jcs0tqYDOLi9ZjYfU9mUxHl7UC4XmBr
	e14Gadqgn0jjIH4EMH1VEz9w/phanszeWTxms91/0r2uiOWN7egJhFuiu4rrZsO/agJdbGLDOmD4q
	dG4vluAkjcu7aRUDQ5wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpn75-0000000Cb9V-0Bfc;
	Fri, 31 Jul 2026 13:17:23 +0000
Received: from out203-205-221-173.mail.qq.com ([203.205.221.173])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpn6z-0000000Cb7K-3AUN
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 13:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785503832; bh=gW+tvRQPk481HdTwPz8zkkWSMpWsfa6tS8dyetXXOrU=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=ewV+8ARlCn7ZAMKcE79lizjisbfeU2oczTzpc0TFED9y8m2W5Q9/Sq0Wrs36zYZrc
	 3KprUZeCURqox5ekUEh57UwE1pr//ENACRGlP1R3xkcvtfF4RxWEQf78d4TQIyv10p
	 oIpqCvlVFU1JsSWvz2CdzmS/FEQOpiNblyhtLYfI=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-XMAILINFO: MhgqsjsLyB9lgglpvTRWkq4RtQwA360U8xUnh2PTRxSK+CQBsNgNq1J1FIRxgq
	 r218z1HFIuJ9IRcNN5zmmaMt/+Swh/pTr+m/FmKmAGPYysj39rXWqFCEG9LDTiz/QS0L5Mt5TDq12
	 hK8AZIhchdjCP3Y10d3BrioMfVynEtIteUUrAJiEbx36wL1yuA4tr38v1xSg9J7UUf1Ph5rDVJocu
	 S6a9oD38B8YhsvvwpOCwbJ0ru4XfWofU59ZHPAeP6AylfuSJ12t2gbay4LCiC8XwWLe+g6Vi2xqdn
	 JYy2A4ISNpdjEcdoKmWT2gTo9aKVmZ3rNFqtnFOd015HhD8uqW/btnIuxVBiaBD1fK3slEOiya8QP
	 /Os9yMk4OvS+HTRwyI/WWIf+GQ8vyyt8p/gOiAimMRtVh6g0oOztKvqd/VlWM+hxGtpglIfa9U7aa
	 7Q0AoYrM0EzA9A0jqNO9IFtTr+m6ZzpV40hmGYh06zr49fvC+ri5ridNtnHELqCFSf1YxxZWNzx4t
	 1s/g6FdM8Mj7tzrqc5yKJJMu9TSMyFUCcme2wdjPZoHq2vZw2zgq01YMDjKrR/KLF9Ijm5V7WuaCq
	 fW04sxTl5GSnFtdwlK/6uRAx/UkQwWDt+GqomKu8rjDu59JJPVRTbcLP5kLn1q2/TzuVyL0XnVBJe
	 9rfEdH/l1xFLif18WpiWQXP4mvFIdnR60a7wrKY+xZ0M5pV74OBX4QC6nP5H8L1E8Y7FB4EB6lrk+
	 HmMzyPoe8rq+3thLJUbXhMtf87Ho+akGM06EE0d/kC52iRq/pEmQmwyupb7BTcMlD31DNapja5TPH
	 8LFV1Eg/QqmyhzBhJUSuSN6ZpLJEzgUN5s3Ex7lbSNBJmrrJHS4P1ewnVzJHkxck0rrHt7r/p4d9G
	 kERH+8anl8MLPpkrwcCnsS/tdDnL9YXtZEDChwvx3W+p1rxxb3DUG9GNrlvp+w9GJxSOU4cGxAa4Q
	 O1wHEbJ4Q29JHduTzjfV24N/6YaJc5OAzeS490Y2lDYDP/jXcAq6Jh3Dbn3iyP9uOWHRUZDUFFKvy
	 vzpgMqmCwmtuZWjMOuk/9eRMhA9ajLpmh5waTNNmqut1OxsvFQDd0YfNaVutwqokygINboFFp86cn
	 9D8=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v6 2/4] can: rockchip: add RK3588 CAN support
Mime-Version: 1.0
Date: Fri, 31 Jul 2026 21:17:10 +0800
X-Priority: 3
Message-ID: <tencent_5AC853C017A2AE1F5B13110D854C79C2FF06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_7BAA0052C402BFFD26291A64198084E39107@qq.com>
 <tencent_207E464D12344B3228096E23A001D6882508@qq.com>
 <20260731-tall-camouflaged-earthworm-e1a7d0-mkl@pengutronix.de>
 <tencent_A3698A465C4621E164443B0005D1CC6FAE05@qq.com>
	<20260731-precise-functional-lobster-cd779f-mkl@pengutronix.de>
In-Reply-To: <20260731-precise-functional-lobster-cd779f-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1785503830tg7jpmm29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_061718_950377_1E88F910 
X-CRM114-Status: GOOD (  17.62  )
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

SGkgTWFyYywKCj4gPsKgPsKgQ2FuwqB5b3XCoGF0dGFjaMKgdGhlwqBUREPCoHRvwqB0aGXCoENB
TsKgZnJhbWV3b3JrP8KgU2VlwqBjb21taXTCoDVlMTY2MzgxMGUxMQo+ID7CoD7CoCgiY2FuOsKg
bWNwMjUxeGZkOsKgZml4wqBUREPCoHNldHRpbmfCoGZvcsKgbG93wqBkYXRhwqBiaXTCoHJhdGVz
IikuwqBBbmTCoGNoZWNrwqBpZgo+ID7CoD7CoENBTi1GRMKgd29ya3PCoG9uwqB0aGXCoHJrMzU4
OMKgd29ya3M/Cj4gPgo+ID7CoENvdWxkwqB3ZcKgbGVhdmXCoHRoZcKgUkszNTg4wqBUREPCoHN1
cHBvcnTCoG91dMKgb2bCoHRoaXPCoHBhdGNowqBzZXJpZXPCoGZvcsKgbm93Pwo+IAo+IC4uYW5k
wqBtYXJrwqB0aGXCoHJrMzU4OMKgYXPCoFJLQ0FORkRfUVVJUktfQ0FORkRfQlJPS0VOwqBmb3LC
oG5vdz/CoEZpbmXCoHdpdGjCoG1lLgoKSSBoYXZlIGZpbmlzaGVkIHRlc3RpbmcgdGhlIENBTi1G
RCBUREMgaW50ZWdyYXRpb24gb24gUkszNTg4LgoKRW5hYmxpbmcgVERDIG1ha2VzIHRoZSB0cmFu
c21pdHRlciBlbnRlciBidXMtb2ZmIGZvciBldmVyeSBURENPIHZhbHVlCnRlc3RlZC4gVGhpcyBp
bmNsdWRlcyB0aGUgZnJhbWV3b3JrIHZhbHVlIChURENPPTQ4KSwgVERDTz0wLCBhbmQgdGhlCm5v
bi16ZXJvIHZhbHVlcyAxLCA4LCAxNiwgMjQsIDMyLCA0MCwgNDggYW5kIDU2LiBXaXRoIFREQ089
NjMsIG9ubHkgb25lCmZyYW1lIHdhcyByZWNlaXZlZCBkdXJpbmcgYSAxMCBzZWNvbmQgdGVzdCwg
c28gdGhhdCBzZXR0aW5nIGlzIG5vdCB1c2FibGUuCgpJIGNoZWNrZWQgdGhlIHJlZ2lzdGVyIGRl
ZmluaXRpb24gYWdhaW5zdCBSb2NrY2hpcCBSSzM1ODggVFJNClYxLjAtUGFydDEtMjAyMjAzMDku
cGRmLiBUaGUgZHJpdmVyIHVzZXMgQ0FOX1RSQU5TTUlUX0RFTEFZX0NPTVBFTlNBVElPTiBhdApv
ZmZzZXQgMHgxMDgsIHdpdGggdGRjX29mZnNldCBpbiBiaXRzIDY6MSBhbmQgdGRjX2VuYWJsZSBp
biBiaXQgMCwgd2hpY2gKbWF0Y2hlcyB0aGUgVFJNLiBUaHVzLCB0aGUgZmFpbHVyZSBpcyBub3Qg
ZXhwbGFpbmVkIGJ5IGFuIGluY29ycmVjdCByZWdpc3RlcgphZGRyZXNzIG9yIGZpZWxkIGRlZmlu
aXRpb24uCgpUaGUgdGVzdCBzZXR1cCB3YXM6CgogIEJvYXJkOiAgICAgICAgICAgICBlbWJlZGZp
cmUscmszNTg4LWx1YmFuY2F0LTVpbwogIENBTiBjbG9jazogICAgICAgICAzMDAgTUh6CiAgTm9t
aW5hbCBiaXRyYXRlOiAgIDUwMCBrYml0L3MKICBEYXRhIGJpdHJhdGU6ICAgICAgNSBNYml0L3MK
ICBTYW1wbGUgcG9pbnRzOiAgICAgODAlIG5vbWluYWwsIDgwJSBkYXRhCiAgQnVzOiAgICAgICAg
ICAgICAgIGNhbjAgYW5kIGNhbjEgZGlyZWN0bHkgY29ubmVjdGVkLCA2MCBPaG0gdGVybWluYXRp
b24KCldpdGggVERDIGRpc2FibGVkLCBhYm91dCAyOSw3NzUgZnJhbWVzIHdlcmUgcmVjZWl2ZWQg
aW4gdGhyZWUgc2Vjb25kcyB3aXRoCm5vIGJ1cyBlcnJvcnMuIFdpdGggVERDIGVuYWJsZWQsIGNh
bjAgdHlwaWNhbGx5IHJlYWNoZWQgYnVzLW9mZiBhZnRlciBhYm91dAoxNS0zMSBidXMgZXJyb3Jz
LgoKVGhpcyBpcyBhIHByZWxpbWluYXJ5IGluZGljYXRpb24gb2YgYSBwcm9ibGVtIGluIHRoZSBS
SzM1ODggQ0FOIElQIFREQwpwYXRoLCBhbHRob3VnaCBpdCBpcyBub3Qgc3VmZmljaWVudCB0byBw
cm92ZSBhIHNpbGljb24gZGVmZWN0LiBJbgpwYXJ0aWN1bGFyLCB0aGUgaGFyZHdhcmUtbWVhc3Vy
ZWQgdHJhbnNtaXR0ZXIgZGVsYXkgKFREQ1YpIGlzIG5vdCBvYnNlcnZhYmxlCnRocm91Z2ggdGhl
IHJlZ2lzdGVycyBkZXNjcmliZWQgYnkgdGhlIFRSTSwgc28gdGhlIFREQyBvZmZzZXQgc2VtYW50
aWNzCnN0aWxsIG5lZWQgdG8gYmUgdmVyaWZpZWQgaW5kZXBlbmRlbnRseS4KClREQyBpcyBub3Qg
YSBtYW5kYXRvcnkgZmVhdHVyZSBmb3IgYSBDQU4tRkQgaW1wbGVtZW50YXRpb24uIEl0IGNvbXBl
bnNhdGVzCnRoZSBUWC10by1SWCBsb29wIGRlbGF5IHdoZW4gdGhhdCBkZWxheSB3b3VsZCBvdGhl
cndpc2UgY29uc3VtZSB0aGUgdGltaW5nCm1hcmdpbiBiZWZvcmUgdGhlIG5vcm1hbCBzYW1wbGUg
cG9pbnQuIFdoZXRoZXIgaXQgbXVzdCBiZSBlbmFibGVkIGRlcGVuZHMgb24KdGhlIGNvbXBsZXRl
IGhhcmR3YXJlIHBhdGgsIGluY2x1ZGluZyB0aGUgY29udHJvbGxlciwgdHJhbnNjZWl2ZXIsIFBD
QiBhbmQKYnVzLiBJdCBpcyB0aGVyZWZvcmUgbm90IHJlcXVpcmVkIHNvbGVseSBiZWNhdXNlIENB
Ti1GRCBvciBhIHBhcnRpY3VsYXIKZGF0YSBiaXRyYXRlIGlzIHVzZWQuCgpPbiB0aGUgYm9hcmQg
dXNlZCBmb3IgdGhpcyB0ZXN0LCBDQU4tRkQgcnVucyByZWxpYWJseSBhdCA1IE1iaXQvcyB3aXRo
IFREQwpkaXNhYmxlZCBhbmQgbm8gbG9zdCBmcmFtZXMuIFRoaXMgZGVtb25zdHJhdGVzIHRoYXQg
UkszNTg4IHN1cHBvcnRzIENBTi1GRCwKd2hpbGUgdGhlIG1heGltdW0gdXNhYmxlIGRhdGEgYml0
cmF0ZSBzdGlsbCBkZXBlbmRzIG9uIHRoZSBib2FyZCBkZXNpZ24gYW5kCml0cyBUWC10by1SWCBk
ZWxheS4gQm9hcmRzIHdpdGggYSBsb25nZXIgZGVsYXkgbWF5IG5lZWQgYSBsb3dlciBkYXRhIGJp
dHJhdGUsCmp1c3QgYXMgZGlmZmVyZW50IENBTiB0cmFuc2NlaXZlcnMgaGF2ZSBkaWZmZXJlbnQg
bWF4aW11bSBkYXRhLXJhdGUKc3BlY2lmaWNhdGlvbnMgKGZvciBleGFtcGxlLCA4IE1iaXQvcyBm
b3Igc29tZSBkZXZpY2VzIGFuZCA1IE1iaXQvcyBmb3IKb3RoZXJzKS4KCkluIG15IG9waW5pb24s
IGVuYWJsaW5nIENBTi1GRCBzdXBwb3J0IG9uIFJLMzU4OCBpcyBpbmRlcGVuZGVudCBvZiBUREMu
ClREQyBpcyBhbiBvcHRpbWl6YXRpb24gZm9yIGhhcmR3YXJlIHBhdGhzIHRoYXQgbmVlZCBhZGRp
dGlvbmFsIFRYLXRvLVJYCmRlbGF5IGNvbXBlbnNhdGlvbiwgcmF0aGVyIHRoYW4gYSBwcmVyZXF1
aXNpdGUgZm9yIENBTi1GRCBvcGVyYXRpb24uIEkgd291bGQKdGhlcmVmb3JlIHN0aWxsIGxpa2Ug
dG8gZW5hYmxlIENBTi1GRCBzdXBwb3J0IGZvciBSSzM1ODggaW4gdGhpcyBzZXJpZXMgd2hpbGUK
a2VlcGluZyBUREMgZGlzYWJsZWQuIFREQyBzdXBwb3J0IGNhbiBiZSBpbnZlc3RpZ2F0ZWQgc2Vw
YXJhdGVseSBpbiBhCmZvbGxvdy11cCBwYXRjaCBvbmNlIGl0cyBiZWhhdmlvciBoYXMgYmVlbiB1
bmRlcnN0b29kLgoKQmVzdCByZWdhcmRzLApDdW5oYW8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
