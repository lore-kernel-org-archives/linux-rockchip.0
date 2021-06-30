Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 001E4C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 06:50:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7113161A1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 06:50:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7113161A1D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jcQ4QikB4G4w/CQxkow4oBVKk1N3TSgBPLFaB4A7gak=; b=x9Z7o8Kksf4v+Iey9tyT/4Ktth
	p2sX5LMCgzghzgLjFp1T/mL6OR/e5CDFGFFslBtAsUl5Hu1IzF8cI5WW6LumHNyGkHFKBVGei8Gyo
	qGlljd7wCmrVf6lIacrv/oBGGjORH7p2uVe8JSfS5z43AeR54bp35R7/VL4iJzjMzK5Ss/KY8HHrs
	JvrZJAO8m0j0EjZMJjHtOKgTdoaioTuZwkV6mCMPb4Yzw7ZkUmWH8xVFb5IzDeCJAJlJRB+Wp4d7l
	1eV+hY8kj3MQxH1cLGTxnVpO3T69AVcnpm7d6TDsPn4XAOwYGybRTFSsRWHQHN5BzpZbCrNRgFD/W
	M+wdLMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyU2r-00Cxwm-Cb; Wed, 30 Jun 2021 06:50:01 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyU2c-00Cxui-GC; Wed, 30 Jun 2021 06:49:50 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 259FE1B8E;
 Wed, 30 Jun 2021 14:49:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [168.168.4.18] (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P12349T139824115734272S1625035780273543_; 
 Wed, 30 Jun 2021 14:49:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <abb208db348bf36d1b7ccc7eb5e4bee0>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-kernel@vger.kernel.org
X-RCPT-COUNT: 15
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v0 2/2] arm64: dts: rockchip: add support for Firefly
 ROC-RK3399-PC-PLUS
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Kongxin Deng <dkx@t-chip.com.cn>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Johan Jonker
 <jbx6244@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Marty Jones <mj8263788@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210628035402.16812-1-djw@t-chip.com.cn>
 <149c2171-471e-343e-8126-38394746b044@t-chip.com.cn>
 <3771996.aKNjEaI27c@diego> <4501122.2vfOZ694Ok@diego>
From: Levin <djw@t-chip.com.cn>
Message-ID: <eb8acfdf-4bc9-7181-89bb-77995b9d2531@t-chip.com.cn>
Date: Wed, 30 Jun 2021 14:49:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4501122.2vfOZ694Ok@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_234946_839369_E1BB6D02 
X-CRM114-Status: GOOD (  17.46  )
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

SGkgSGVpa28sCgoKVGhhbmtzIGZvciB5b3VyIHJlcGx5LgoKCk9uIDIwMjEtMDYtMjkgNTozMiBQ
TSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcsIDI5LiBKdW5pIDIwMjEsIDEx
OjMwOjEwIENFU1Qgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPj4gSGkgTGV2aW4sCj4+Cj4+IEFt
IERpZW5zdGFnLCAyOS4gSnVuaSAyMDIxLCAxMToxNTo1OSBDRVNUIHNjaHJpZWIgTGV2aW46Cj4+
PiBIaSBhbGwsIGlzIGl0IHBvc3NpYmxlIHRvIHR1cm4gb24gc29tZSBjb2RlYyBtaXhlciBzd2l0
Y2ggaW4gdGhlIGRldmljZQo+Pj4gdHJlZT8KPj4gSSBkb24ndCB0aGluayB0aGF0IGlzIGFwcHJv
cHJpYXRlIGFuZC9vci8gcG9zc2libGUgaW4gdGhlIGRldmljZXRyZWUuCj4+Cj4+IEluc3RlYWQg
SSB0aGluayB5b3Ugd2FudCBhbiBBbHNhIFVDTSBwcm9maWxlIGZvciBpdCwgc2VlOgo+PiBodHRw
czovL2dpdGh1Yi5jb20vYWxzYS1wcm9qZWN0L2Fsc2EtdWNtLWNvbmYvdHJlZS9tYXN0ZXIvdWNt
Mi9Sb2NrY2hpcAo+PgoKQWxzYSBVQ00gcHJvZmlsZSBpcyBhIGNvbXBsZXRlIHNvbHV0aW9uLCB5
ZXQgaXQgcmVxdWlyZXMgbW9yZSBsYWJvciB3b3JrIApvZiBhZGRpbmcgYSBjb21wbGV4IHByb2Zp
bGUgd2l0aCBhbGwgdGhlIGNvbnRyb2xzLgoKClRoZSBwcm9ibGVtIGlzLCBtdXNpYy92aWRlbyBw
bGF5ZXIga25vd3Mgbm90aGluZyBvZiB0aGUgbWl4ZXJzLiBBbmQgd2l0aCAKY3VycmVudGx5IGNv
ZGVjIGRyaXZlciBzZXR0aW5nLCB1c2VyIGNhbm5vdAoKaGVhciBhbnkgc291bmQgdW50aWwgaGUg
dHVybnMgb24gdHdvIG1peGVyIHN3aXRjaC4KCgpJIGhvcGUgdG8gaGF2ZSBhICJzaW1wbGUtYXVk
aW8tY2FyZCxzd2l0Y2giIHByb3BlcnR5IGhlcmUuCgoKPj4+Cj4+PiBDdXJyZW50bHksIHRvIGhl
YXIgdG8gc291bmQsIHdlIG5lZWQgdG8gcnVuIHRoZSBmb2xsb3dpbmcgY29tbWFuZHMgZnJvbQo+
Pj4gdGhlIHVzZXIgc3BhY2U6Cj4+Pgo+Pj4gICAgICMgdHVybiBvbiBtaXhlciBzd2l0Y2gKPj4+
Cj4+PiAgICAgYW1peGVyIC1jIDEgc3NldCAnTGVmdCBNaXhlcicgb24KPj4+ICAgICBhbWl4ZXIg
LWMgMSBzc2V0ICdSaWdodCBNaXhlcicgb24KPj4+Cj4+PiAgICAgIyByYWlzZSB2b2x1bWUKPj4+
Cj4+PiAgICAgYW1peGVyIC1jIDEgc3NldCAnT3V0cHV0IDInIDM2Cj4+Pgo+Pj4KPj4+IElmIHRo
ZXNlIHNldHRpbmdzIGNhbiBiZSBlbWJlZGRlZCBpbnRvIGRldmljZSB0cmVlLCBhbmQgc2V0IGJ5
IGtlcm5lbCBhcwo+Pj4gaW5pdGlhbCBBTFNBIHBhdGggc2V0dGluZ3MsCj4+Pgo+Pj4gdXNlciBj
YW4gaGVhciB0aGUgc291bmQgd2l0aCB6ZXJvIEFMU0EgY29uZmlnLiBUaGF0J2xsIGJlIGdyZWF0
Lgo+Pj4KPj4+Cj4+PiBPbiAyMDIxLTA2LTI4IDExOjU0IEFNLCBkandAdC1jaGlwLmNvbS5jbiB3
cm90ZToKPj4+PiArCj4+Pj4gKwllczgzODgtc291bmQgewo+Pj4+ICsJCWNvbXBhdGlibGUgPSAi
c2ltcGxlLWF1ZGlvLWNhcmQiOwo+Pj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+
Pj4gKwkJcGluY3RybC0wID0gPCZocF9kZXRfcGluPjsKPj4+PiArCQlzaW1wbGUtYXVkaW8tY2Fy
ZCxuYW1lID0gInJvY2tjaGlwLGVzODM4OC1jb2RlYyI7Cj4gYW5kIEkgZ3Vlc3MgeW91J2Qgd2Fu
dCBhIG1vcmUgc3BlY2lmaWMgbmFtZSBhcyB0aGF0IGNvbmZpZyBsaWtlbHkgaXMgYm9hcmQtc3Bl
Y2lmaWMKPiBub3QgZm9yIGFsbCBib2FyZHMgdXNpbmcgdGhlIGVzODM4OC1jb2RlYz8KPgo+Cj4g
SGVpa28KPgoKSSBnb3Qgd2hhdCB5b3UgbWVhbiBub3cuIEl0IHNob3VsZCBiZSByZW5hbWVkIHRv
IGEgYm9hcmQtc3BlY2lmaWMgY2FyZCAKbmFtZSBpZiB1c2luZyBBbHNhIFVDTSBwcm9maWxlLCBy
aWdodCA/CgotLSAKCkJlc3QgUmVnYXJkcyEKCkxldmluIER1CgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
