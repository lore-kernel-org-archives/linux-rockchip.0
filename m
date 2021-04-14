Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE9EC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:33:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1BC46113B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 16:33:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1BC46113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MZAfFtNrLynI7L6riEZAgOKyU+oI/U1UatBHaGZ/4xE=; b=DC3yP1nre+WbKEBUpe0O44JeY
	3usLVOYehKFe7dg0Py3yLlU2tesqF/Xt7fduSxyEgOTndkH+SLHuDBj+IHTn1+tTY8DrKlW8gqQ8V
	rO/KYRTUosVaQhfWwvhbIbPnr9T/WVmZrXstWcYZl1WQRPY5D204d8Rzyl3RPZG6vJs/84jlGf/7A
	Z1Bqs8qanUYFwGp51iKsP2Oeeq8XsSBBBTs7JX+2XKFz6D73IK3e9GoyJ+2/gufgnt8VXfbOAnVH0
	CFIU4BihZcuTR1+7kecgiw/gJDULuWHb3MPnfXEKuq4yDc8MsC+IVRuDdqzqxI3sTVx1sjbbTFQRZ
	H28C9Eodw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWiSL-00D9Kd-9G; Wed, 14 Apr 2021 16:33:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWiSH-00D9Jg-99
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 16:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=v+IVNuBBZoNiK9hvyTQ8YjtQe7halQe48d5jPUOcEkk=; b=TtOXeXB4rmnZWUzjjy1qRBrRGa
 n0ENfRAxdqk0hUbkRo1h/8V12G62KzldO/CGuSfQu+BKubkr4rPBHDl1VzpYH0Uhsh7zwRNS5kF2z
 uSZPxh6gffkRU4lSvWQcuj3/qOJwN4IRugodmtpJKjODl5l8/fTpY3d4g2ucKZf3/qenl4fpMxzex
 KvsFp1ugRUqiC/4S7G3+//Lk0eBWCcVDFu6pwTmjpYwPi+wTZLENDgkJcrjH9Ag1IY09CkdoHYJQN
 ZH2T5K6G1rIyr/dUv+A9EXFfUky5BRD1D0Ho07uge5Fn+yAYi9yG+psAvEm/p2VKGxmUKsWZEwyqq
 QtsaUvZg==;
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWiSE-007wnH-7v
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 16:33:28 +0000
Received: by mail-lf1-x134.google.com with SMTP id 12so34082683lfq.13
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 09:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v+IVNuBBZoNiK9hvyTQ8YjtQe7halQe48d5jPUOcEkk=;
 b=I8OZWdG/hEWao7+psZy0KtjWYoVGPfIlqvvmT1ZY6YOCxXWrMFaTjaGU0D68384Z/u
 5SVKIyweP3GVKiJTSbU9bygHuqrFWoIP2pjDOt4sUquZuxTSzWruL7LBk22t0adHi6Jf
 qJqDs4gSWSCBFV0eD7iBimPosdYZk/YXAI6IkclAf2mfqW+ZId8p/oEHTX44QO6nmbW/
 IJJtEoHPPf7vWbZJcWubYZyD+2/erSbasjJnRts6+jjb3tkwFxSRUM7adbjmgascCv6R
 5xBmUu35XGlZHVw76JZTuzZUR6KucxpmZf0HQ7ZhASn1N+WpxGEyFffNUPDElN93Q4w9
 J+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v+IVNuBBZoNiK9hvyTQ8YjtQe7halQe48d5jPUOcEkk=;
 b=jvkdeMXIKPjtjgpd/CUD9BNLMaZ0PfQ0btqkLIImcoWjRc+zjl+NcRxeh5Cn5uq+wz
 WZSyr3VHHOlprLIjvTWKhVTvIKA/CjfsXHmt4c6dFJW4qAUIgwB5mxCoUTsVMVKnwiHT
 dXheCSrMLwm9xO4TrPylbbAiKi56dX7wTOgYOfhAY40pIGmFmus4A8pSiHcDl1aGrK64
 Oa9KaERn0zwBKapzT8y6lvpO646ntIKsTo+yvaPawQkKDlQivcRY2J/i7wLFihA1+y7c
 L+rDivVHuJP3Lz+v9YUx8b7o0sk/lRl/AgLqck0lhNUJotOweBcRTPcmXzja8N9yNhlu
 pH6w==
X-Gm-Message-State: AOAM531o9aUlfUecScJuy4e1OFmKmY784JugkbA48z6knwvvGhLvBXzu
 6my/RY9YWAJzR6yVym0T0jMr6/0YRqHn3rzbk3Q=
X-Google-Smtp-Source: ABdhPJxhYCmRcHVaIfYbTT2Dd4NaeVzYGwLcqQxiyhMAvY/ztNVwUlAgtQyMS1Ic6glPyPYDIEDZH4Vr3HPklvu0Uyw=
X-Received: by 2002:a05:6512:23a3:: with SMTP id
 c35mr5046637lfv.618.1618418002676; 
 Wed, 14 Apr 2021 09:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <1412-60762b80-423-d9eaa5@27901112>
 <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
 <2596687.TLnPLrj5Ze@diego>
 <16102d157576bfa7be341ed7508e70d930e40bab.camel@collabora.com>
In-Reply-To: <16102d157576bfa7be341ed7508e70d930e40bab.camel@collabora.com>
From: Chen-Yu Tsai <wens213@gmail.com>
Date: Thu, 15 Apr 2021 00:33:12 +0800
Message-ID: <CAGb2v67ZBR=XDFPeXQc429HNu_dbY__-KN50tvBW44fXMs78_w@mail.gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jose Abreu <joabreu@synopsys.com>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 David Wu <david.wu@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_093326_323456_C0BC39B1 
X-CRM114-Status: GOOD (  23.80  )
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

T24gVGh1LCBBcHIgMTUsIDIwMjEgYXQgMTI6MTQgQU0gRXplcXVpZWwgR2FyY2lhIDxlemVxdWll
bEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpIFBldGVyLCBIZWlrbywKPgo+IE9uIFdlZCwg
MjAyMS0wNC0xNCBhdCAxMzoxNSArMDIwMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBN
aXR0d29jaCwgMTQuIEFwcmlsIDIwMjEsIDEzOjAzOjI1IENFU1Qgc2NocmllYiBQZXRlciBHZWlz
Ogo+ID4gPiBPbiBUdWUsIEFwciAxMywgMjAyMSBhdCA3OjM3IFBNIEV6ZXF1aWVsIEdhcmNpYSA8
ZXplcXVpZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCBy
azM1NjZfc2V0X3RvX3JtaWkoc3RydWN0IHJrX3ByaXZfZGF0YSAqYnNwX3ByaXYpCj4gPiA+ID4g
PiA+ICt7Cj4gPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJmJzcF9wcml2
LT5wZGV2LT5kZXY7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoSVNfRVJS
KGJzcF9wcml2LT5ncmYpKSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRl
diwgIiVzOiBNaXNzaW5nIHJvY2tjaGlwLGdyZiBwcm9wZXJ0eVxuIiwgX19mdW5jX18pOwo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4gPiArICAgICAgIH0KPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3Jm
LCBSSzM1NjhfR1JGX0dNQUMxX0NPTjEsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
IFJLMzU2OF9HTUFDX1BIWV9JTlRGX1NFTF9STUlJKTsKPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiArc3RhdGljIHZvaWQgcmszNTY4X3NldF90b19yZ21paShzdHJ1Y3Qg
cmtfcHJpdl9kYXRhICpic3BfcHJpdiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpbnQgdHhfZGVsYXksIGludCByeF9kZWxheSkKPiA+ID4gPiA+ID4gK3sKPiA+
ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmYnNwX3ByaXYtPnBkZXYtPmRl
djsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIGlmIChJU19FUlIoYnNwX3ByaXYt
PmdyZikpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiTWlzc2lu
ZyByb2NrY2hpcCxncmYgcHJvcGVydHlcbiIpOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
cmV0dXJuOwo+ID4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiAr
ICAgICAgIHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3JmLCBSSzM1NjhfR1JGX0dNQUMwX0NPTjEs
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgIFJLMzU2OF9HTUFDX1BIWV9JTlRGX1NF
TF9SR01JSSB8Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgIFJLMzU2OF9HTUFDX1JY
Q0xLX0RMWV9FTkFCTEUgfAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBSSzM1Njhf
R01BQ19UWENMS19ETFlfRU5BQkxFKTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAg
IHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3JmLCBSSzM1NjhfR1JGX0dNQUMwX0NPTjAsCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgIFJLMzU2OF9HTUFDX0NMS19SWF9ETF9DRkcocnhf
ZGVsYXkpIHwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgUkszNTY4X0dNQUNfQ0xL
X1RYX0RMX0NGRyh0eF9kZWxheSkpOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAg
cmVnbWFwX3dyaXRlKGJzcF9wcml2LT5ncmYsIFJLMzU2OF9HUkZfR01BQzFfQ09OMSwKPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgUkszNTY4X0dNQUNfUEhZX0lOVEZfU0VMX1JHTUlJ
IHwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgUkszNTY4X0dNQUNfUlhDTEtfRExZ
X0VOQUJMRSB8Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgIFJLMzU2OF9HTUFDX1RY
Q0xLX0RMWV9FTkFCTEUpOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgcmVnbWFw
X3dyaXRlKGJzcF9wcml2LT5ncmYsIFJLMzU2OF9HUkZfR01BQzFfQ09OMCwKPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgUkszNTY4X0dNQUNfQ0xLX1JYX0RMX0NGRyhyeF9kZWxheSkg
fAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBSSzM1NjhfR01BQ19DTEtfVFhfRExf
Q0ZHKHR4X2RlbGF5KSk7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gU2luY2UgdGhlcmUgYXJlIHR3byBH
TUFDcyBvbiB0aGUgcmszNTY4LCBhbmQgZWl0aGVyLCBvciwgb3IgYm90aCBtYXkKPiA+ID4gPiA+
IGJlIGVuYWJsZWQgaW4gdmFyaW91cyBjb25maWd1cmF0aW9ucywgd2Ugc2hvdWxkIG9ubHkgY29u
ZmlndXJlIHRoZQo+ID4gPiA+ID4gY29udHJvbGxlciB3ZSBhcmUgY3VycmVudGx5IG9wZXJhdGlu
Zy4KPiA+ID4KPiA+ID4gUGVyaGFwcyB3ZSBzaG91bGQgaGF2ZSBtYXRjaCBkYXRhIChzdWNoIGFz
IHJlZyA9IDwwPiwgb3IgYWdhaW5zdCB0aGUKPiA+ID4gYWRkcmVzcykgdG8gaWRlbnRpZnkgdGhl
IGluZGl2aWR1YWwgY29udHJvbGxlcnMuCj4gPgo+ID4gSG1tLCAicmVnIiB3aWxsIGJlIHVzZWQg
YnkgdGhlIGFjdHVhbCBtbWlvIGFkZHJlc3Mgb2YgdGhlIGNvbnRyb2xsZXIsCj4gPiBzbyBtYXRj
aGluZyBhZ2FpbnN0IHRoYXQgc2hvdWxkIGJlIHRoZSB3YXkgSSBndWVzcy4KPiA+Cj4gPiBXZSdy
ZSBhbHJlYWR5IGRvaW5nIHNvbWV0aGluZyBzaW1pbGFyIGZvciBkc2k6Cj4gPiBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
dHJlZS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYyNuMTE3
MAo+ID4KPgo+IEkgaGF2ZSB0byBhZG1pdCwgSSdtIG5vdCBhIGZhbiBvZiBoYXJkY29kaW5nIHRo
ZSByZWdpc3RlcnMgaW4gdGhlIGtlcm5lbC4KPgo+IERhdmlkIFd1IHNvbHZlZCB0aGlzIGluIHRo
ZSBkb3duc3RyZWFtIGtlcm5lbCBieSB1c2luZyBidXNfaWQsCj4gd2hpY2ggcGFyc2VzIHRoZSBk
ZXZpY2V0cmVlICJldGhlcm5ldEAwIiBub2RlLCBpLmUuOgo+Cj4gICBwbGF0LT5idXNfaWQgPSBv
Zl9hbGlhc19nZXRfaWQobnAsICJldGhlcm5ldCIpOwoKV2hhdCBoYXBwZW5zIHdoZW4gb25lIGFk
ZHMgYW5vdGhlciBldGhlcm5ldCBjb250cm9sbGVyIChVU0Igb3IgUENJZSkgdG8KdGhlIGJvYXJk
IGFuZCB3YW50cyB0byBjaGFuZ2UgdGhlIG51bWJlcmluZyBvcmRlcj8KCk9yIG1heWJlIG9ubHkg
dGhlIHNlY29uZCBldGhlcm5ldCBjb250cm9sbGVyIGlzIHJvdXRlZCBvbiBzb21lIGJvYXJkCmFu
ZCB0aGUgc3VibWl0dGVyIC8gdmVuZG9yIHdhbnRzIHRoYXQgb25lIHRvIGJlIGV0aGVybmV0MCwg
YmVjYXVzZQppdCdzIHRoZSBvbmx5IHVzYWJsZSBjb250cm9sbGVyPwoKVGhpcyBzZWVtcyBldmVu
IG1vcmUgZnJhZ2lsZSB0aGFuIGhhcmRjb2RpbmcgdGhlIHJlZ2lzdGVycy4KClJlZ2FyZHMKQ2hl
bll1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
