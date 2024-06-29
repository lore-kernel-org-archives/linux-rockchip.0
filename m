Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE71C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 15:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=weGI22gmyVqj3tKuDd+Qaxgby+wv6wMSKJBEq2r0YHE=; b=MNFlDeHvo9YfIqx4YbCfoj742D
	uwG46EHncLRY1bw/IygyLTPX0E7rgLArRX3P4dDxfYZaiDPS0iKEFIzRAH0JmHn+6ULtlX7ZQ9p5L
	FajZ3pFH+nbERBFCCRExn3p0Z11tOKGhgHcejdYwm6tLyl38uHKREV3Sr1XiJZTO0xhDNuX5PUnPc
	aTghHgJaIKV3+d2nOxQcicXSpkFXfW0lHlc3CAzyuS5RmjOPmATSHzI47ECAivzo08+BFP5iQKjNg
	RJZJMZH/GS0DZBJeATsYnh1dJQF4xSN9fbB/UlZsTSph3cZ6HcEixa5rOdxAzvLSNRw041g7CHICZ
	KNMLvCLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNZxB-0000000GaPM-19d0;
	Sat, 29 Jun 2024 15:25:29 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNZx0-0000000GaNi-1XRX;
	Sat, 29 Jun 2024 15:25:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719674713;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b6Ws66bOGqcBAy/403OzNRCaqE8AEbj6gN0m3zALVxo=;
	b=qgvzYcQLWsADV30jhM2Vzv5UFoi6ErzYCFdT/DGoq452KKgvExc1S35Soyz+KSBUw/WXmF
	JOr7UCF6NYlo4+x/uOW1nN9mmprqr7P9UqeOZ0RV4j9LEeBIpX6Lt0OATbUgisJWeMhu/c
	sDToUSHrwG1RvbH8m0kvPnCuWMPzew4hNNIZuYduwySFLLsKQxpmgRIwRGwMiR7gjpmgKZ
	hMRyU27+9rn6CqjldEQJ5WSHsoRgPgTseqxDIeBHbqLFGEIeCi0y3+Z9jvF5R6EJvy9T7b
	ADPbtaBy+Gx7f6piyu9YZnsp8pG29RBifnbbbT5CnER2U7ZcKTrkfXKc/hLt6A==
Date: Sat, 29 Jun 2024 17:25:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges
 to RK356x SoC dtsi
In-Reply-To: <7679413.EvYhyI6sBW@diego>
References: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
 <7679413.EvYhyI6sBW@diego>
Message-ID: <f10d5a3c425c2c4312512c20bd35073c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_082519_027726_9812351C 
X-CRM114-Status: GOOD (  18.59  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA2LTI5IDE3OjEwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBTYW1zdGFnLCAyOS4gSnVuaSAyMDI0LCAwNzoxMToyNCBDRVNUIHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+IAo+PiArI2lmbmRlZiBSSzM1NlhfR1BVX05QVV9TSEFSRURfUkVHVUxBVE9SCj4g
Cj4gaXMgdGhlcmUgc29tZSByZWFzb24gZm9yIHRoaXMgZHVwbGljYXRpbmcgb2Ygb3Bwcz8KPiAK
PiBUaGUgcmVndWxhdG9yIGZyYW1ld29yayBzaG91bGQgcGljayB0aGUgbG93ZXN0IHN1cHBvcnRl
ZCB2b2x0YWdlCj4gYW55d2F5LCBzbyBpdCBzZWVtcyB5b3UncmUganVzdCBleHRlbmRpbmcgdGhl
bSB1cHdhcmRzIGEgYml0Lgo+IAo+IFNvIEkgcmVhbGx5IGRvbid0IHNvIHdoeSB3ZSdkIG5lZWQg
dG8gc2V0cyBoZXJlLgoKVGhlIHJlYXNvbiBpcyBpbXByb3ZlZCBzdHJpY3RuZXNzLiAgSGF2aW5n
IHRoZSBleGFjdCBHUFUgT1BQIHZvbHRhZ2VzCnJlcXVpcmVkIGZvciB0aGUgYm9hcmRzIHdob3Nl
IEdQVSByZWd1bGF0b3JzIGNhbiBwcm92aWRlIHRob3NlIGV4YWN0CnZvbHRhZ2VzIG1ha2VzIGl0
IHBvc3NpYmxlIHRvIGRldGVjdCBtaXNjb25maWd1cmF0aW9ucyBtdWNoIGVhc2llciwKanVzdCBs
aWtlIGl0IHdhcyB0aGUgY2FzZSB3aXRoIHRoZSBib2FyZCBkdHMgbWlzY29uZmlndXJhdGlvbiB0
aGF0CnJlc3VsdGVkIGluIHRoZSByZWNlbnQgRENEQ19SRUcyIHBhdGNoLiBbMV0KCklmIHdlIGhh
ZCBHUFUgT1BQIHZvbHRhZ2UgcmFuZ2VzIGluIHBsYWNlIGluc3RlYWQsIHRoZSBhZm9yZW1lbnRp
b25lZAppc3N1ZSB3b3VsZCBwcm9iYWJseSByZW1haW4gdW5kZXRlY3RlZCBmb3Igc29tZSB0aW1l
LiAgSXQgd291bGRuJ3QgYmUKdGhlIGVuZCBvZiB0aGUgd29ybGQsIDopIG9mIGNvdXJzZSwgYnV0
IHRoZSByZXN1bHRpbmcgaW5jcmVhc2VkIHBvd2VyCmNvbnN1bXB0aW9uIGlzbid0IG9uZSBvZiB0
aGUgZGVzaXJlZCBvdXRjb21lcy4KClsxXSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvZTcwNzQyZWEyZGY0MzJiZjU3YjNmN2RlNTQyZDgxY2EyMmIwZGEyZi4xNzE2MjI1
NDgzLmdpdC5kc2ltaWNAbWFuamFyby5vcmcvCgo+IEFsc28gdGhlIHZvbHRhZ2UtcmFuZ2UgdGhp
bmcgbWFrZXMgc2Vuc2UgZm9yIG5vbi1ncHUtbnB1LXNoYXJpbmcKPiBib2FyZHMsIHdoZW4gdGhl
IHN1cHBseWluZyByZWd1bGF0b3IgZG9lcyBub3QgZnVsbHkgc3VwcG9ydCB0aGUKPiBkaXJlY3Qg
c2luZ2xlLXZhbHVlIHZvbHRhZ2UuCj4gCj4gKHJrMzM5OS1wdW1hIHdhcyBzdWNoIGEgY2FzZSBp
ZiBJIHJlbWVtYmVyIGNvcnJlY3RseSkKPiAKPiBTbyBJIHJlYWxseSBzZWUgbm8gcmVhc29uIGZv
ciB0aGlzIGR1cGxpY2F0aW9uLgoKUGVyaGFwcyB3ZSBjb3VsZCByZW5hbWUgdGhlIFJLMzU2WF9H
UFVfTlBVX1NIQVJFRF9SRUdVTEFUT1IgbWFjcm8KYWNjb3JkaW5nbHkgaW4gdGhlIHYyLCB0byBS
SzM1NlhfR1BVX09QUF9WT0xUQUdFX1JBTkdFUywgZm9yIGV4YW1wbGUsCndpdGggc29tZSBhZGRp
dGlvbmFsIGV4cGxhbmF0aW9ucyBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24gYW5kIHRoZQpSSzM1
NnggU29DIGR0c2kgZmlsZSBpdHNlbGYuCgo+PiAgCQlvcHAtMjAwMDAwMDAwIHsKPj4gIAkJCW9w
cC1oeiA9IC9iaXRzLyA2NCA8MjAwMDAwMDAwPjsKPj4gIAkJCW9wcC1taWNyb3ZvbHQgPSA8ODI1
MDAwPjsKPj4gQEAgLTIyMiw2ICsyMjksMzcgQEAgb3BwLTgwMDAwMDAwMCB7Cj4+ICAJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDgwMDAwMDAwMD47Cj4+ICAJCQlvcHAtbWljcm92b2x0ID0gPDEwMDAw
MDA+Owo+PiAgCQl9Owo+PiArI2Vsc2UKPj4gKwkJb3BwLTIwMDAwMDAwMCB7Cj4+ICsJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDIwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAw
MCA4MjUwMDAgMTAwMDAwMD47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJb3BwLTMwMDAwMDAwMCB7Cj4+
ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0
ID0gPDgyNTAwMCA4MjUwMDAgMTAwMDAwMD47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJb3BwLTQwMDAw
MDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47Cj4+ICsJCQlvcHAt
bWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgMTAwMDAwMD47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJ
b3BwLTYwMDAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDYwMDAwMDAwMD47Cj4+
ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgMTAwMDAwMD47Cj4+ICsJCX07Cj4+
ICsKPj4gKwkJb3BwLTcwMDAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDcwMDAw
MDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDkwMDAwMCA5MDAwMDAgMTAwMDAwMD47Cj4+
ICsJCX07Cj4+ICsKPj4gKwkJb3BwLTgwMDAwMDAwMCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8g
NjQgPDgwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDEwMDAwMDAgMTAwMDAwMCAx
MDAwMDAwPjsKPj4gKwkJfTsKPj4gKyNlbmRpZiAvKiBSSzM1NlhfR1BVX05QVV9TSEFSRURfUkVH
VUxBVE9SICovCj4+ICAJfTsKPj4gCj4+ICAJaGRtaV9zb3VuZDogaGRtaS1zb3VuZCB7Cj4+IAo+
IAo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
