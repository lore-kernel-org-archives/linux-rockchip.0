Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 342B0C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 01:03:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B323613FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 01:03:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B323613FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RMp7xjf7fbKoT9MJDkMT0+tsDcn22vAfNDMkU5a707w=; b=dEyhWqQEHX0DWWmr2RoqcFWuP
	7E/I+PYV0a3THbwYDbMjmnKx+G51sv79QWsuLs8bzuPAfQbFptH3PIwHzWF8KG/vM0bCjWr1cfAgj
	Ko278wtJ9gR/Uf6epm0XDr4Tt0GyyQJaNn1jQ2qJ9BSmDGq5clMpWwHOczFrwg+dS4CW4w08OtPLI
	H0edE7AcSj/OG8VXWkyoUsRlEK9fV2yao+SR/CQ79ENsGsQJMMwV2k35fRIedvNrM4WWPyPgr39q2
	zL9DbsnekhkTyCzk/lj6C+iugmosAMorR7xDDLLsLakLgF8fSo5CzQdmsYSW/dAFW5NlJ9M+AfVnN
	wUfg5PLKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZkE2-000DjZ-Ha; Fri, 23 Apr 2021 01:03:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZkDh-000DhF-Du; Fri, 23 Apr 2021 01:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=RoxJvYoEa7i6MMLC1eLM6ULWe6hMyjbkJGCr4KYLgnI=; b=gFY65tR3hfViH7PWX8OFWHf8O5
 ep2GXpwqhLCVYeA8kx4dDA/l9FsQRKm4aExJVgPTqN7o4iDv+Nu6Rjn/x0fwqokO4XXZwNIu8HFcL
 f4+QQJHPZ41sTMDtgjgP34RWO1v1epMZPbs+WgX69n3eZlMapaRn6Dns7vE2Nj51RnXeczvWpKNB2
 UMb1DGMJFKSkxi8gv31wB/U7r5aRdlzuR+y0zB+O2wJGLPVR8Kh7vi6uuSAEi9wX1R0XcBzEc33ne
 RkMYejXrIHpqyYE/9+Te58GgWvYFR0tKiXRG8RM2ER1kx4dWp49B341zVfAO+Kdk+2M+9B4ATYtAg
 1Hyr3KhA==;
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZkDc-00E4Wa-KS; Fri, 23 Apr 2021 01:02:55 +0000
Received: from localhost (unknown [192.168.167.223])
 by lucky1.263xmail.com (Postfix) with ESMTP id 4DBABD1973;
 Fri, 23 Apr 2021 09:02:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22004T139994620753664S1619139755396305_; 
 Fri, 23 Apr 2021 09:02:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a423a9ca8790f90aefedb609e5c1ae5d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-RCPT-COUNT: 26
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: Ezequiel Garcia <ezequiel@collabora.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, cl@rock-chips.com
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com> <11131098.F0gNSz5aLb@diego>
 <7d1f197d868ae84a8bc475f1f48178d2737518c1.camel@collabora.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <1e0cb95e-e040-d34b-6443-ae93668962ec@rock-chips.com>
Date: Fri, 23 Apr 2021 09:02:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7d1f197d868ae84a8bc475f1f48178d2737518c1.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_180253_208288_EA2AD50C 
X-CRM114-Status: GOOD (  25.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sIEV6ZXF1aWVsLAoKT24gMjAyMS80LzIzIOS4iuWNiDE6MjMsIEV6ZXF1aWVsIEdh
cmNpYSB3cm90ZToKPiBIaSBMaWFuZywKPgo+IEknbSB2ZXJ5IGltcHJlc3NlZCBSb2NrY2hpcCBp
cyBwdXNoaW5nIHBhdGNoZXMgc28gZWFybHksIHRoYW5rcyBhIGxvdCEKPgo+IFNlZSBiZWxvdy4K
Pgo+IE9uIFdlZCwgMjAyMS0wNC0yMSBhdCAxMToxMyArMDIwMCwgSGVpa28gU3TDvGJuZXIgd3Jv
dGU6Cj4+IEhpIExpYW5nLAo+Pgo+PiBBbSBNaXR0d29jaCwgMjEuIEFwcmlsIDIwMjEsIDA4OjU5
OjIwIENFU1Qgc2NocmllYiBjbEByb2NrLWNoaXBzLmNvbToKPj4+IEZyb206IExpYW5nIENoZW4g
PGNsQHJvY2stY2hpcHMuY29tPgo+Pj4KPj4+IFJLMzU2OCBpcyBhIGhpZ2gtcGVyZm9ybWFuY2Ug
YW5kIGxvdyBwb3dlciBxdWFkLWNvcmUgYXBwbGljYXRpb24gcHJvY2Vzc29yCj4+PiBkZXNpZ25l
ZCBmb3IgcGVyc29uYWwgbW9iaWxlIGludGVybmV0IGRldmljZSBhbmQgQUlvVCBlcXVpcG1lbnRz
Lgo+Pj4KPj4+IFRoaXMgcGF0Y2ggYWRkIGJhc2ljIGNvcmUgZHRzaSBmaWxlIGZvciBpdC4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuZyBDaGVuIDxjbEByb2NrLWNoaXBzLmNvbT4KPj4gdGhp
cyBpcyBhIGZpcnN0IHJvdW5kIG9mIGJhc2ljIHN0dWZmIDotKSAuCj4+Cj4+IEZpcnN0IG9mIGFs
bCwgSSByZWFsbHkgbGlrZSB0aGUgbW92ZSBvZiBtb3ZpbmcgdGhlIHByZXR0eSBzdGFuZGFyZGl6
ZWQKPj4gcGluY29uZmlnIGVudHJpZXMgdG8gdGhlIHJvY2tjaGlwLXBpbmNvbmYuZHRzaSAuCj4+
Cj4+ICgxKSBCdXQgcGxlYXNlIG1vdmUgdGhpcyBpbnRvIGEgc2VwYXJhdGUgcGF0Y2ggdG8gbWFr
ZSB0aGF0IG1vcmUgdmlzaWJsZQo+PiBhbmQgbWF5YmUgZXZlbiBjb252ZXJ0IF9zb21lXyBvciBh
bGwgYXJtNjQgUm9ja2NoaXAgc29jcyB0byB1c2UgdGhhdAo+PiBhcyB3ZWxsCj4+Cj4+ICJhcm02
NDogZHRzOiByb2NrY2hpcDogYWRkIGdlbmVyaWMgcGluY29uZmlnIHNldHRpbmdzIHVzZWQgYnkg
bW9zdCBSb2NrY2hpcCBzb2NzCj4+Cj4+IFRoZSBwaW5jb25maWcgc2V0dGluZ3MgZm9yIFJvY2tj
aGlwIFNvQ3MgYXJlIHByZXR0eSBzaW1pbGFyIG9uIGFsbCBzb2NzLAo+PiBzbyBtb3ZlIHRoZW0g
dG8gYSBzaGFyZWQgZHRzaSB0byBiZSBpbmNsdWRlZCwgaW5zdGVhZCBvZiByZWRlZmluaW5nIHRo
ZW0KPj4gZm9yIGVhY2ggc29jIgo+Pgo+PiAoMikgSSBhbHNvIGxpa2UgdGhlIGV4dGVybmFsIHJr
MzU2OC1waW5jdHJsIGFwcHJvYWNoIHdpdGggdGhlIGR0c2kgZ2V0dGluZwo+PiBhdXRvLWdlbmVy
YXRlZC4gVGhpcyB3aWxsIHByb2JhYmx5IGhlbHAgdXMgaW4ga2VlcGluZyBwaW5jdHJsIHNldHRp
bmdzCj4+IHN5bmNocm9ub3VzIGJldHdlZW4gbWFpbmxpbmUgYW5kIHRoZSB2ZW5kb3Iga2VybmVs
Lgo+Pgo+PiAoMykgRnJvbSBteSBiYXNpYyB1bmRlcnN0YW5kaW5nIHRoZSByazM1NjggaXMgYmFz
aWNhbGx5IGEgcmszNTY2ICsgbW9yZQo+PiBwZXJpcGhlcmFscywgc28gaWRlYWxseSB0aGV5IHdv
dWxkIHNoYXJlIHRoZSBiYXNpYyBvbmVzIGluIGEgcmszNTY2LmR0c2kKPj4gd2hpY2ggdGhlIHJr
MzU2OC5kdHNpIHRoZW4gY291bGQgaW5jbHVkZSBhbmQgZXh0ZW5kIHdpdGggaXRzIGFkZGl0aW9u
YWwKPj4gcGVyaXBoZXJhbHMuCj4+Cj4+IFdpdGggYXQgbGVhc3QgdGhlIHBpbmU2NCBib2FyZHMg
YmVpbmcgYmFzZWQgb24gdGhlIHJrMzU2NiwgdGhlcmUgcHJvYmFibHkKPj4gd2lsbCBiZSBxdWl0
ZSBhIG1haW5saW5lIHVzZSBvZiBpdCBhcyB3ZWxsLgo+Pgo+PiBPciBpcyB0aGVyZSBzb21ldGhp
bmcgdGhhdCB3b3VsZCBwcmV2ZW50IHRoaXM/Cj4+Cj4gSSBhZ3JlZSB3aXRoIGhhdmluZyBhIHJr
MzU2Ni5kdHNpLCBhbmQgcmszNTY4LmR0c2kgb24gdG9wLCBpbnN0ZWFkIG9mIHRoZQo+IG90aGVy
IHdheSBhcm91bmQuIFdlIGhhdmUgc29tZSBSSzM1NjYgYm9hcmRzIGhlcmUsIHNvIHdlIGNhbiBz
dXJlbHkgdGVzdAo+IHRoZSBSSzM1NjYuZHRzaSBwYXRjaGVzIHZlcnkgcXVpY2tseS4KV2UgY29u
c2lkZXIgcmszNTY4IGFzIGEgZnVsbCBpbXBsZW1lbnRhdGlvbiBhbmQgcmszNTY2IGlzIGEgc3Vi
c2V0LCBhbGwgCnRoZSBkdHMgY29tcGF0aWJsZSBzdHJpbmcgZm9yCmRyaXZlciBzaG91bGQgZ28g
d2l0aCBzdHJpbmcgJ3JrMzU2OCcsIGFuZCByazM1Njggd2lsbCBiZSB0aGUgbG9uZyB0ZXJtIAp2
ZXJzaW9uIGFuZCBkZWZpbml0ZWx5IGhhdmUgbW9yZQpib2FyZHPCoCBpbiBuZXh0IGZldyB5ZWFy
cy4gU28gd2Ugd291bGQgbGlrZSB0byB1cHN0cmVhbSByazM1NjggZmlyc3QgYW5kIApmb2xsb3cg
dGhlIGltcGxlbWVudCBtb2RlCm9mIFBYMzArUkszMzI2LCB3aGljaCBjYW4gYWxzbyBjb3ZlciB0
aGUgbmVlZCBieSBSSzM1NjYuCgpXZSBjYW4gaGF2ZSBhIHJrMzU2Ni5kdHNpIGxpa2UgcmszMzI2
LmR0c2kuCgoKVGhhbmtzLAotIEtldmVyCj4KPiBBbHNvLCBpdCdzIGZpbmUgaWYgeW91IHdhbnQg
dG8gc2VuZCB2MiB3aXRoIGp1c3QgdGhlc2UgbWluaW1hbCBwZXJpcGhlcmFscy4KPiBIb3dldmVy
LCBJIHRoaW5rIHlvdSBjb3VsZCBpbmNsdWRlIEdNQUMgYW5kIFRTLUFEQzoKPgo+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzMxYzJlNTMxLTk2ZDAtYTFjMS02NDRjLTI4
YzYwZWI0MGNmNEBnbWFpbC5jb20vVC8jdAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzIwMjEwNDIxMjAzNDA5LjQwNzE3LTEtZXplcXVpZWxAY29sbGFib3JhLmNvbS9U
LyN0Cj4KPiBUaGVzZSBzaG91bGQgd29yayByaWdodCBvdXQgb2YgdGhlIGJveCEKPgo+IFRoYW5r
cyEKPiBFemVxdWllbAo+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
