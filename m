Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB352E67A6B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 05:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4bCQd2YiAU6FeWGxA6MUlbwuVNM2bzisU5ipvmC1Ms=; b=cqGYogVwqUiZoq
	jj6ZIEMXmBfszJ2pYWPwMWq6D64cqZ7meXMixJAwYHxB/4Q74nQ+xA4PavhepvLuvhcKCOpp90Dws
	/Y9bYaRNYCEfYncTLb05xlpyypXrvI/hNPrwD0dCOw2VBGvwd/AJ/x1u8BLLLJrZyct2nn0cefNUe
	UKtYI2ykVdRvnWtPYEVBHGf8F/ypr+ebL1Vl0jfPf0N/rXRXCn7bpT2EXDts717qiNwwCOOYBsie3
	vcQsjmWbfbK4/1fbdQNWCjUNXihkELtKB4DRyU/r4ipJ7wlLb27Zfd83jCB2MVEQnC8Lp1aVR8+TJ
	YpGI93aK1gfersfUl2Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxIa7-0000000EZ54-0HZf;
	Tue, 03 Mar 2026 05:46:07 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxIa4-0000000EZ4O-3JHg
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 05:46:06 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-483a233819aso50207365e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Mar 2026 21:46:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772516762; cv=none;
        d=google.com; s=arc-20240605;
        b=hQpVU1BY6HHbidAYvUCATFnIzlorsO8r/2Sx+euub6mGiA5aNTg9/30H2Sx+okM6Sk
         lUy0ijQ67S4bMioKaiAsd8AOm6klFmFbGVhN5f7SwQA1cl2Sr2HB7NlAhpfYOSyawoMi
         VZPHkAd7cAWXTZU47DQtSKiqQZ7fb7C04csTpLAQVEm0M9Eezv+t5ZIEdIq/qnaarRW8
         bjbZcZ1mZqD5AAXSJ83mueWYhKPOddxXhXNSkdBGCZ+TaV9Cp0oeKJ9R7GCH1u7ZZtAU
         hulA3+2OpEKkp8+uIxSHzO7tiZzoqO5RdtcxgdUkIup1EM/TAiz+5VhOZsc72bMfu8hj
         09Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        fh=HQBMJJfKzz1q0op7c1jKKKrn2eN0KBDtlCmS/cgluFQ=;
        b=atTWfkTLQfWMNYxkmN7UX6Hv0XwQB9sWAX77M/odiwrpz3UwU+mDSeFWnzd0zY76h9
         lKLoxFZsJXtnkJx4Gme/nlFxxM03SUEX4kxuwYyKk0jLpRiKj0CUAAi6i3+3F+una2VT
         ugzBhwJKpEKE3r5Fb/nC0jyh87Zyt53ylRW820uRRgkYt+c+mkfL4bD4HQOTkgXfKu13
         3TVphgKJb0S0CE2oHa2/secCUw+ytLYJqP4nB07TSZjqfNg1Z7YA8GF+cbbUvGLWluhA
         Z4JUH0BfhQ4+fRGtKTzQwWBK0X9ECFDAAPXrcqFjdC/I9C79JhnrosunwcC385yfszUb
         Ml6A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772516762; x=1773121562; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        b=TpBnf5L1gbisp3qeYCtcOdRUtiFA7oK92HkvxYg9mVKnFq5Km8FmYGJSGMi73okX2v
         rlDgCcjHPxZfgSeicTqCfRglnkLKmZeMuOucnCunrlOavvSlL0HPvs6nH4n3DT5WlS1q
         5Q1wczcZote1hYIl9r7sHDkVYL+lqNBbYwl3szyIALz5gvN+26LxjAq8QZNIEXzaWTSf
         d0AwZPqfkjwufzq3NhPfc0NtO9ZjCCa94tkdmjSYiExobHb6TB8dSo9KaJmioLxxULAl
         FP5rPpGzmXcpP1erwGzGFsuFPD0BVKbnCxFcVELRuHO3ymX+Rf8+F9l1EATMO3G9kJ41
         UIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772516762; x=1773121562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        b=nxzEuzuCoLGY8hIh6j3+3agdgFKBWRPUuQbmar7e2lLUHRjrxF66XnsNb6z9PZ71JQ
         Vkk05J3hghM3HaN55KlAiytWfq5IpM2kTcN4YjHT3u1k8XVh4djrA4Dcq2Faz/bl5NPi
         3kcoU90lvWrPd+cLRhpQGQWeq5Qd/OeSL1Xp1iRnVlpX3FNqBofdoZ7QatGQoc98Q+Yg
         NfKG77Cwy2entalnkFf2N2TLAO77OVoKFr/JbC3J6mvOMQ/HW6OB8F0Vge55VcBGO7vo
         gdgwxhel0UCkn6qXtBozPE1eUOlmww77E1VosEem3gZops6J/d4OF0KNTy2GGvLEK64g
         TNhw==
X-Forwarded-Encrypted: i=1; AJvYcCVq6sxXWfKwmkYyd0w16MOxZ5pybBcMkdW6dL7IO/6mxFctbmPzWVKZKkk7kCaT9l5IeRa3pnNMXUkVbt4RqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEUyckkrykCFidWLichbB4hZQtT6k5JUGBqzk2yYN34l0a6qfr
	CfIEwrNGJfwDb61Q++Rs6J3meQbSpMrKiK73V+ffpiOBFACA1nmR2fWx5SfvGS9qT6Vr8ygVQjv
	IrZDv8adOVIlkqmfCzaGFzbtbArH02NU=
X-Gm-Gg: ATEYQzy2xKbSttY7OV/LqdEe729hwYRPn9D4lbfhNlbDPMxv9FOiaa+N6yTrnc8AzmS
	Mr9E8b5fSNi0AQbw6ICsSPeRMTqY7/QxDX30r8Gi/gqKr8eBzTnUSnCSOoaDwRtnt8cA0k+jOzK
	m+RwnIMIu16yi10ki3Nf7AUATEA6ify3XTbFbntIQXmWhniSzJlQ6/gd8TeSuiI5BgWLQANk4Gi
	UsL2JIZ2l0aW2O4jcX3SzWiAt42bCcuJhdhrxVgsnZp+B0aqYSeROHUhLG13fWOXcjeTNe4sCWL
	TUSRF9Sc7+/aXzSMFzy7D6RpjBMAzPUMMmCIB1M=
X-Received: by 2002:a05:600c:444d:b0:480:4a90:1afe with SMTP id
 5b1f17b1804b1-483c9c2be1dmr238500735e9.34.1772516761986; Mon, 02 Mar 2026
 21:46:01 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <7914983.EvYhyI6sBW@phil>
In-Reply-To: <7914983.EvYhyI6sBW@phil>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 2 Mar 2026 23:45:51 -0600
X-Gm-Features: AaiRm513DtYPYb0SE8zCJViZ_vWjiX4flM-ALyo4bupgiMyyhndhFJi4olO5cRM
Message-ID: <CALWfF7+fkGRVGBtjupK_1xL9F48JSSHiz2xt2_6_BX_-bt8rDQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Heiko Stuebner <heiko@sntech.de>, dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_214604_870024_A1AC49A5 
X-CRM114-Status: GOOD (  30.72  )
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

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCA1OjI34oCvQU0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBEZW5uaXMsCj4KPiBBbSBTYW1zdGFnLCAyOC4gRmVicnVh
ciAyMDI2LCAyMTo1NDoxNyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIGRl
bm5pc0BhdXNpbC51czoKPiA+IEZyb206IERlbm5pcyBHaWxtb3JlIDxkZW5uaXNAYXVzaWwudXM+
Cj4gPgo+ID4gQWRkIGRldmljZSB0cmVlIGZvciB0aGUgWHVubG9uZyBPcmFuZ2UgUGkgNSBQcm8g
KFJLMzU4OFMpLiBUaGUgUHJvCj4gPiBkaWZmZXJzIGZyb20gdGhlIGJhc2UgT3JhbmdlIFBpIDUg
aW4gdGhlIGZvbGxvd2luZyB3YXlzOgo+ID4KPiA+IC0gTm8gU1BJIE5PUiBmbGFzaDsgZU1NQyBt
b2R1bGUgc2xvdCBpbnN0ZWFkLCB5b3UgY2FuIG9wdGlvbmFsbHkgc29sZGVyCj4gPiAgIGEgU1BJ
IE5PUiBmaW4gcGxhY2UgYW5kIHR1cm4gb2ZmIHRoZSBlTU1DCj4gPiAtIFBDSWUtYXR0YWNoZWQg
TklDIChwY2llMngxbDEpIHJlcGxhY2VzIHRoZSBHTUFDMSBldGhlcm5ldAo+ID4gLSBQQ0llIE5W
TWUgc2xvdCAocGNpZTJ4MWwyKQo+ID4gLSBBUDYyNTYgV2lGaSAoQkNNNDM0NTYpIHZpYSBTRElP
IHdpdGggbW1jLXB3cnNlcQo+ID4gLSBCQ000MzQ1QzUgQmx1ZXRvb3RoIHZpYSB1YXJ0OSB3aXRo
IGZ1bGwgUlRTL0NUUwo+ID4gLSBUd28tY29sb3VyIChibHVlL2dyZWVuKSBHUElPIExFRCB1c2lu
ZyBtb2Rlcm4gY29sb3IvZnVuY3Rpb24gYmluZGluZwo+ID4gLSBhdWRpbyBpcyB3aXJlZCB1cCBk
aWZmZXJlbnRseQo+ID4KPiA+IFZlbmRvcnMgZGVzY3JpcHRpb24gYW5kIGxpbmtzIHRvIHNjaGVt
YXRpY3MgYXZhaWxhYmxlOgo+ID4gaHR0cDovL3d3dy5vcmFuZ2VwaS5vcmcvaHRtbC9oYXJkV2Fy
ZS9jb21wdXRlckFuZE1pY3JvY29udHJvbGxlcnMvZGV0YWlscy9PcmFuZ2UtUGktNS1Qcm8uaHRt
bAo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERlbm5pcyBHaWxtb3JlIDxkZW5uaXNAYXVzaWwudXM+
Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAg
ICAgfCAgIDEgKwo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5k
dHMgICB8IDM3NiArKysrKysrKysrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDM3NyBp
bnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5kdHMKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IGluZGV4IDRkMzg0ZjE1M2MxMy4uYzk5ZGNhMmFlOWU3
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gQEAgLTIx
NCw2ICsyMTQsNyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1uYW5v
cGktcjZjLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhzLW9k
cm9pZC1tMi5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1v
cmFuZ2VwaS01LmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhz
LW9yYW5nZXBpLTViLmR0Ygo+ID4gK2R0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1
ODhzLW9yYW5nZXBpLTUtcHJvLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazM1ODhzLW9yYW5nZXBpLWNtNS1iYXNlLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1ODhzLXJhZHhhLWNtNS1pby5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2MtcGMuZHRiCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5kdHMKPiA+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmQ2NTYzMjhjOTA2ZAo+
ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cwo+ID4gQEAgLTAsMCArMSwzNzYgQEAKPiA+ICsvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ICsKPiA+ICsvZHRz
LXYxLzsKPiA+ICsKPiA+ICsjaW5jbHVkZSAicmszNTg4cy1vcmFuZ2VwaS01LmR0c2kiCj4gPiAr
Cj4gPiArLyB7Cj4gPiArICAgICBtb2RlbCA9ICJYdW5sb25nIE9yYW5nZSBQaSA1IFBybyI7Cj4g
PiArICAgICBjb21wYXRpYmxlID0gInh1bmxvbmcsb3JhbmdlcGktNS1wcm8iLCAicm9ja2NoaXAs
cmszNTg4cyI7Cj4gPiArCj4gPiArICAgICBhbGlhc2VzIHsKPiA+ICsgICAgICAgICAgICAgL2Rl
bGV0ZS1wcm9wZXJ0eS8gZXRoZXJuZXQwOwo+ID4gKyAgICAgICAgICAgICBtbWMwID0gJnNkaGNp
Owo+ID4gKyAgICAgICAgICAgICBtbWMxID0gJnNkbW1jOwo+ID4gKyAgICAgICAgICAgICBtbWMy
ID0gJnNkaW87Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gKyAgICAgLyogUHJvIHVzZXMgZ3Bpby1s
ZWRzIGluc3RlYWQ7IHB3bTAgTEVEIGlzIG5vdCB3aXJlZCB1cCAqLwo+ID4gKyAgICAgL2RlbGV0
ZS1ub2RlLyBwd20tbGVkczsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBQcm8gdXNl
cyBpMnMyIChpMnMybTEgbXV4KSBmb3IgYXVkaW8sIG5vdCBpMnMxLiBSZWNyZWF0ZSB0aGUgc291
bmQKPiA+ICsgICAgICAqIGNhcmQgbm9kZSBwb2ludGluZyBhdCBpMnMyXzJjaCBpbnN0ZWFkLgo+
ID4gKyAgICAgICovCj4gPiArICAgICAvZGVsZXRlLW5vZGUvIGFuYWxvZy1zb3VuZDsKPgo+IEkg
dGhpbmsgaXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRvIG1vdmUgdGhlIHJlbGV2YW50IG5vdC1z
aGFyZWQgcGFydAo+IG91dCBvZiB0aGUgZHRzaSBpbnN0ZWFkLiBZZXMgdGhlIGR1cGxpY2F0aW9u
IGluIG9yYW5nZXBpLTUgYW5kIG9yYW5nZXBpLTViCj4gc2hvdWxkIGJlIGZpbmUuCj4KPiBIYXZp
bmcgYSBkZXZpY2V0cmVlIHdpdGggc28gbWFueSAvZGVsZXRlLW5vZGUvIGFuZCAvZGVsZXRlLXBy
b3BlcnR5Lwo+IGVsZW1lbnRzIHNwcmlua2xlZCB0aHJvdWdob3V0IHRoZSBmaWxlLCB3aWxsIGRl
ZmluaXRseSBjYXVzZSByZWFkYWJpbGl0eQo+IChhbmQgaGFuZGxpbmcgaXNzdWVzKSBpbiB0aGUg
ZnV0dXJlLgo+Cj4gQWRkaXRpb25hbGx5IHRoaXMgbWFrZXMgYWxsIHRoZSBjb21tZW50cyBpbiB0
aGUgZmlsZSBleHBsYWluaW5nIGluZGl2aWR1YWwKPiBkaWZmZXJlbmNlIHVubmVjZXNzYXJ5Lgo+
Cj4KPiBUaGFua3MKPiBIZWlrbwo+CkhpIERlbm5pcywKCllvdSBjb3VsZCBmb2xsb3cgdGhlIHBh
dHRlcm4gdGhhdCB3YXMgdXNlZCBmb3IgdGhlIGZ1bGwgUkszNTg4IE9yYW5nZQpQaSA1IGJvYXJk
cy4KVGhlIE9yYW5nZSBQaSA1IE1heCBhbmQgVWx0cmEgYXJlIHZlcnkgc2ltaWxhciwgc28gdGhl
eSBib3RoIHNoYXJlIGEKRFRTSS4gSG93ZXZlciwgdGhlIHBhcnRzIHRoYXQgYXJlIGFsc28gY29t
bW9uIHdpdGggdGhlIE9yYW5nZSBQaSA1ClBsdXMgYXJlIHB1dCBpbnRvIGEgY29tbW9uIERUU0kg
dGhhdCBpcyB1c2VkIGJ5IGFsbCAzIGJvYXJkcy4KClNvIGZvciB0aGVzZSBSSzM1ODhzIE9yYW5n
ZSBQaSA1IGJvYXJkcywgeW91IGNvdWxkIHJlZmFjdG9yIHRoZQpleGlzdGluZyBEVFNJIHRvIHNl
cGFyYXRlIHRoZSBwYXJ0cyB0aGF0IGFyZSBvbmx5IHVzZWQgYnkgdGhlIG9sZGVyCkREUjQgT3Jh
bmdlIFBpIDUgYW5kIDVCLCBmcm9tIHRoZSBwYXJ0cyB0aGF0IGFyZSBjb21tb24gdG8gYWxsIDMK
Ym9hcmRzLgoKVG8gdmVyaWZ5IHRoZSBleGlzdGluZyBPcmFuZ2UgUGkgNSBhbmQgNUIgYm9hcmRz
IERUQnMgYXJlIG5vdCBkYW1hZ2VkLAp5b3Ugc2hvdWxkIGJlIGFibGUgdG8gY29udmVydCB0aGUg
RFRCcyB0byBEVFNzIGJlZm9yZSByZWZhY3RvcmluZyBhcyBhCmJhc2VsaW5lLCBhbmQgdGhlbiBh
ZnRlciB0aGUgcmVmYWN0b3JpbmcsIGNvbnZlcnQgdGhlIERUQnMgdG8gRFRTcyBhbmQKY29tcGFy
ZSB3aXRoIHRoZSBiYXNlbGluZS4KCkFzIGFuIGV4YW1wbGUgb2YgdGhlIGRlbGV0ZS1ub2RlL2Rl
bGV0ZS1wcm9wZXJ0eSBsZWFkaW5nIHRvIHByb2JsZW1zCmluIHRoZSBmdXR1cmUgaXMgd2hlbiBE
aXNwbGF5UG9ydCBBbHRNb2RlIGlzIGFkZGVkIHRvIHRoZSA1IGFuZCA1Qi4KVGhlIG5ldyBwcm9w
ZXJ0aWVzIHdpbGwgYmUgaW5oZXJpdGVkIGludG8gdGhlIDUgUHJvIGRldmljZSB0cmVlLCB3aGVu
CnRoZXkgYXJlIG5vdCB3YW50ZWQuCgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
