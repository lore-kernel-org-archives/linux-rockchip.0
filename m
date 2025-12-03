Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 484A1D116F3
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 08:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koKqglYVA5tftsU9XdfCO9s4x9vmU0C+5kZtOw5V4ls=; b=aYdV0T1buToKwP
	oH+/ebIaEAOD2A1uJ9WxoqOj3mFuxdLo+jK07a+AcfVwOPgXL8BLpu6wyw1nb1HcOYqxpb+NQTnVv
	mK0aFJQ1f1D5hh8CnPbK/OCPmw5T646x+I+TGiuhqqToyONJSAjKoOrxSWUEVY2koh7yanEIE4Ils
	XBmR67Unq8l7tVPZfYogpWPSK5Lb8tBhVWgUVM8/VqhWTa2HHYhUgxbGZ4+MeUUek4Vre00tACWoa
	t0wC3l0AqvAd6hdJjS08FVI5rQQe9yjHxDUu7ILvPXgsD0dJY230RIYD55vilnuNKsq7zla8OY8Lf
	5odLak8h8xqzb6zlU/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQieo-00000006Ku7-3yBn;
	Wed, 03 Dec 2025 08:56:18 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiel-00000006Ksz-0xFW
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 08:56:16 +0000
X-QQ-mid: zesmtpgz1t1764752118t99a65be2
X-QQ-Originating-IP: RHMRvkO7bNUZP2aT3Z2Y0jigv5xKHA9O/yp7n6n+N9I=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 16:55:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18252387431315069170
Message-ID: <5D1F62998F80D03D+6b662fa3-4c6d-49da-b43c-d3363fe36553@radxa.com>
Date: Wed, 3 Dec 2025 17:55:12 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
From: FUKAUMI Naoki <naoki@radxa.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
 jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
 <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
 <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
 <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
Content-Language: en-US
In-Reply-To: <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OJG2NVWVA7qwuDvmhOwtK0dfwvMzVVvQGESTPNQl2fNly9BcCuFyGFWO
	zoMIg7ocm0DH6X7s7Cpf2EyoGG+fCp1xolb+G0QoZkBfDKhrESpDx85AL9KMkz3t2FyCDbE
	cyWaHPsipTkkYJ65U8pT6WCYoq+sGjgMScxfeQurVxDRIMRFzrGZZJBgEYMEIXojaM3iahP
	ic+Iy7O52OBl0A7wmPdznXd21T7h9+mf5KEKvY/bYWTffE2tX2twqjSv+xevuLm14npgxZT
	Z5+px/7uaFtLONGeeP0zfi3npiuGa5H5hw1cc7LnvZTwMPmtsZ3MPLQIr+6SHxvImubdQS+
	Y0jjEbZQ3PEsrzugiUbWHTP6G+GqHfD08ljUjsHXLdMcN5MJs2de4d90NPGcDrMd5KxL4AJ
	vKD4sbJzR9/C6vFkVWwj8LD2pFns+qjLSRnrG0KQU9jDHvIyV03UtBW8aqbF2iv9DW3oixN
	k+dH5f8s0rOhekfcMh9/9tDRJvkD4bsiP231YYuWVxAiu3OQ5+P34yt3Yx8zWPaJHHs21cb
	KWHi1pUolxtWVnEuLowkFCoEXrAB2AVytWjYoVoEB4RaJ9nke+WEYLp5WkSx0CxAluI83PI
	aAjgQr0L9d7RXH9JT/18JvfN0gEF/L6xnTzOwXauUglXiKLvdIhkso7xUfJE9wfWN0bpeEr
	IfSeKysKb7UOlvqMTOrBhhIE7gNKkSAHB/9KfY4gEMle1LCU/ndin/yqB5XMfZ6aj/0ZQA4
	OaWsrHM9UPLf4wm0O6F7v75OhIwb5+2aoPngQAOZvY9yuDm7LslIMSutskQtZIjMrnfvKvB
	iNahqxfZlpmmZ1bWZsy957B82CBn06QT6SU17JH7q7xB1Owg2xL8+i0kT2yv0hQy7mKdFB/
	81ZX7EriyZvQHOwfDSnDlOUQvicv/VpQX4g2jXpdCGv8kKX5HH0K6OBolDr7YR7VcfWKMi2
	jpnLBl/jq9famv63sCoaVMcTD7mDiUm1b8KSzbSPEoaiLNA==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_005615_723189_9AF6078C 
X-CRM114-Status: GOOD (  15.11  )
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

T24gMTIvMy8yNSAxNzo0NSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBKaW1teSwKPiAKPiBP
biAxMi8zLzI1IDE0OjQyLCBKaW1teSBIb24gd3JvdGU6Cj4+IE9uIFR1ZSwgRGVjIDIsIDIwMjUg
YXQgNDoxNuKAr0FNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+Pgo+
Pj4gSGkgYWxsLAo+Pj4KPj4+IEkgc2luY2VyZWx5IGhvcGUgdGhlIGZvbGxvd2luZyB3aWxsIGJl
IGhlbHBmdWwgaW4geW91ciByZXZpZXcuCj4+PiDCoMKgIGh0dHBzOi8vZ2l0aHViLmNvbS9SYWR4
YU5hb2tpL2xpbnV4L2Jsb2IvY201LWlvLXY5OTktMjAyNTEyMDEvIAo+Pj4gYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpCj4+PiDCoMKgIGh0dHBzOi8v
Z2l0aHViLmNvbS9SYWR4YU5hb2tpL2xpbnV4L2Jsb2IvY201LWlvLXY5OTktMjAyNTEyMDEvIAo+
Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS1pby5kdHMK
Pj4gQ291bGQgeW91IGVsYWJvcmF0ZSBvbiB3aHkgeW91J3JlIGxpbmtpbmcgdG8gdGhlICJ2OTk5
IiBicmFuY2g/IFRoZQo+IAo+IFdoZW4geW91IHJldmlldyBzb21ldGhpbmcgKGUuZy4sIHY1KSwg
eW91IG1pZ2h0IGZpbmQgaXQgaGVscGZ1bCB0byByZWZlciAKPiB0byBhbm90aGVyIHNpbWlsYXIg
dGhpbmcgKGUuZy4sIHY5OTkpLgo+IAo+PiBjb250ZW50IG9mIHRoYXQgYnJhbmNoIGRvZXNuJ3Qg
bWF0Y2ggdGhlIGNvbnRlbnRzIG9mIHRoaXMgcGF0Y2ggc2VyaWVzCj4+IChpLmUuIFJFU0VORCAy
IG9mIHY1KS4gVGhlICJ2NSIgYnJhbmNoIGxvb2tzIGNsb3NlciB0byB0aGlzCj4+IHN1Ym1pc3Np
b24uCj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9SYWR4YU5hb2tpL2xpbnV4L2Jsb2IvY201LWlvLXY1
LTIwMjUxMjAxCj4+Cj4+IENvbW1lbnRzIG9uIHRoZSAidjk5OSIgYnJhbmNoLi4uaXQgZG9lcyBo
YXZlIHRoZSBpbXByb3ZlbWVudHM6Cj4gCj4gWW91IGRvIG5vdCBuZWVkIHRvIHJldmlldyB2OTk5
LCBhcyBpdCBpcyBub3QgcGFydCBvZiB0aGlzIHBhdGNoIHNlcmllcyAKPiAoaXQgaXMgSm9zZXBo
J3Mgd29yaykuIFBsZWFzZSBvbmx5IHJldmlldyB2NSBhbmQgc3Vic2VxdWVudCB2ZXJzaW9ucy4K
CiJpdCIgYmVmb3JlICJpcyBKb3NlcGgncyB3b3JrIiB3YXMgdW5jbGVhci4uLiBJIG1lYW50ICJ0
aGlzIHBhdGNoIHNlcmllcyAKaXMgSm9zZXBoJ3Mgd29yayIuCgo+PiAtIHRoYXQgYWxsb3dzIHRo
ZSB1c2FnZSBvZiB0aGUgUmFkeGEgZU1NQyB0byB1U0QgYWRhcHRlcgo+PiAtIGRlZmluZXMgdGhl
IGdtYWMxIGluIHRoZSBTb00gZHRzaSwgYnV0IG9ubHkgZW5hYmxlcyB0aGUgZ21hYzEgaW4gdGhl
Cj4+IElPIGJvYXJkJ3MgZHRzLgo+IAo+IFRoYW5rcyBhbnl3YXkuCgpJJ2xsIHJlZmxlY3QgeW91
ciBzdWdnZXN0aW9uIGluIHY2LgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tj
aGlwL0NBTFdmRjcrRzZNUnZ1U204YS1hMEtjUGR1WHo9c1lzSlQwYkIzMDByQXFtdHQydy1jZ0Bt
YWlsLmdtYWlsLmNvbS8KCj4gQmVzdCByZWdhcmRzLAo+IAo+IC0tIAo+IEZVS0FVTUkgTmFva2kK
PiBSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+IAo+Pj4KPj4+IEJlc3QgcmVn
YXJkcywKPj4+Cj4+PiAtLSAKPj4+IEZVS0FVTUkgTmFva2kKPj4+IFJhZHhhIENvbXB1dGVyIChT
aGVuemhlbikgQ28uLCBMdGQuCj4+Cj4+IEppbW15Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
