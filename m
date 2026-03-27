Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A67110BA455
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 09:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jA/slxLZvgn4c+e9CkMkZuI7Z7fDcuC7kt6REKYu7so=; b=wFPrR6+JPhpRwT
	7aFfBJA4+UdbDct+pKWP5bzh7JvEx/NIzylMEX6K0u15A4QaIgFB8YvMwMdrAigENXlO0FT6if/UD
	a1oO4PSa/W3yzwLdUQTErTdjCg4zc4sxwEj6hcRbqYbKIz1ATJB4J5p/6vuv65QA7g36MCZx2Je6T
	LC0xZpDYkRM/oKZJYssUTqnNdoFq0z6YG/mRhINUqiC/pQxBSskry4Z56AUMs0bssNnaHwactlKDG
	4Kqx+/951QoiVJKAMArbrMIX5fR13K/qOwsZhUqATdnPcOkiunLfNMadjpIH6qFrbmDHG5iuxQHy2
	rja7TQ8KESAIsgcugIFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w638x-0000000722C-0ZH5;
	Fri, 27 Mar 2026 09:06:15 +0000
Received: from mail-ed1-f43.google.com ([209.85.208.43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w638u-0000000721k-1kTN
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Mar 2026 09:06:13 +0000
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-66b0e894336so1794207a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Mar 2026 02:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774602369; cv=none;
        d=google.com; s=arc-20240605;
        b=Vn+OJ5e0nSfTliVCHzkY7Ah7Gp7rbNvIMlws30NblhRN/sfZqcFAWvvwKCrO4u16VB
         5SbOT9++8OR/40Icsp7lDZT0Cpn3mOR1Gg8bqYj2snXvX13qrqxOFWWrWBZLXfzv9GzR
         ZtX75DuID+TvaJ6o37/uVY/9fr/Puayu4hijRyueHvSoM/03ldLU2lvI20DMGMMXC/08
         pj2pmi13dqQIFre5iiKoBLRonwFurYqf0k8tn/HsDShwBgOmTPcvz8webkBA59WDHJRv
         pW0at+38yS5lhbb0iXRavZLT57TlMWM3FE9q11nZbqbMUcIMf4Ds1qiusFRGn4AzQhLv
         jFuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EcbL84R2Ic0MsfVq/sbwk6AErZQ8PN1gKoAXHtH00KM=;
        fh=HJR4hJKNEeRZ5i8nVwxcwIIZvR9SHfBbahDPI4uvcWc=;
        b=ddJOpm9DTHI8VBJwk5ANfHBJggJl1FQGgSJVJIHlsjq5Xgxw1rnOAdIfIV6yGyKs79
         PfgYatn4WyYK0CAGfXQdDOLhODHmYy3taEEEDyNPV9r7Ea397B0+I4j4G3qEDKdIaevi
         k8XFMWRy8jjeNY2S5s7t8AypozGNX2UDyvICNywR8zzAGh5czz2jjDeMi2rXhI0hj3GH
         I5Axsgz5FXThetGnWkXK/wmVuXL8ohmfDmmTTLSoLsxUEufE47Ujao0z/yK4NnZcIsn9
         TO/ghU+HrZXvnbkLdCnT5mQLlMjNiD/5F2XGW1tFzlb7P5Lp76v9yU+Ht7YAmy3uUdbG
         ZRzg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774602369; x=1775207169; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EcbL84R2Ic0MsfVq/sbwk6AErZQ8PN1gKoAXHtH00KM=;
        b=hLZWbSo0dLFFBOnDnYUGQHRBd594qP79tif+hnNWBsiXD/q1MGB2HOkZ5SR1+6qKnP
         iXo2HcoY8Wu8LOKXtwgefB7SkV6cFEt64H/jTY7FQMQ37+2MdTpjemXnPhoddKdut9D7
         +aHAlJPXrkkZdTF+Cr9aTgSz5FK144e++O0iVCXlGsNmL598mAx4zN6j62TUywx2W2PH
         5MQ0zGX6YoHvLSO7EajYXr2oeZdNpKwuC7wNbMDWY891yAJOTUnGSKexQOgO/DzNebr0
         mtumAvtQPnGqNcUJJl0uBE4IIzsVTn7jflq81hrTHnrzzBZl+8cENeWF74xb0ma9kTK1
         Iw5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774602369; x=1775207169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EcbL84R2Ic0MsfVq/sbwk6AErZQ8PN1gKoAXHtH00KM=;
        b=WEWD0Hxfdq8Fcn0yczTTKQGc2NsHKCn9JrTLO6kQGprlxSLvSROOJIIGW4951ql9rh
         55azgvHi80o/qksu24c6vFXFbt1SGKew5QXMYx2hR1WZazzihshlE8t3Ht7oZreFLOjo
         njG3wtWdG6GdUKDzq10FMBIivMRb1mn8PioStoi1aRh0LO7pktmbI9HU9RGHtPqk6rq0
         zEVvzaGBmk7G1FTxwVHkdKdlz5qsZVzkthgAirNIj0rvMoLzuNgzOTFaoZERm/9s1CLn
         dvr4YefrWEgZU6CyFhVbP7AQaZ02qCSpfrb5g4HTmvURkh7D6zDKnq+sgDVqAhx083o3
         QHng==
X-Forwarded-Encrypted: i=1; AJvYcCX7oqR6P7uB/zR3MJ7E7ja4YjH+I5rHbqlM32DXuY9nqjWkye4JF7nUWy37dB/LjtqhkqVl1Dm8ZeZ5UbQgoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwveWUb5PA3R/r/6L4Qh9LxmZ3RF6WsUklZ6FzPEkArBRTKKpmv
	WbaF7/vMdy20Ravw3VYV3X7vnhAdmcyKfkg+h/JinSQtWhvrtOn8mOk5ucPHv6VpPHl3kkAjhWS
	Fc7T/Go3a6dYZB+YMLYNDraoNnFNNWWQ=
X-Gm-Gg: ATEYQzxSoDTx+I2AVe6xD3tENyF7FgU6y83pQNeVkfDfjaJmUiN5SuPBie1BqLMUU8e
	uTvtd+mZgdXCVfTJzBTa31YbdxsUzHo0vNMH5raMiIN+jt5R0+hQF+w5GK15XjHfLdiZZ4I1RaA
	jEJmMZDKaqNBlgTUROCZPTLpEFalywstMotQNMbof6YyAgDEB4HkDPJs2J9vX3iIt9bBwJST1A8
	N4GjJegFj6kIKOazvAfN6AhTP6OACCXbflk63g/AIHtS2tJPfquneynMNAWzxXLzdtbik0eFo83
	uKwu1+c=
X-Received: by 2002:a05:6402:1d4e:b0:66a:526b:96b5 with SMTP id
 4fb4d7f45d1cf-66b28c5262bmr1098566a12.18.1774602369094; Fri, 27 Mar 2026
 02:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260320094441.128263-1-midgy971@gmail.com> <177437177535.786081.7519498810130807269.b4-ty@sntech.de>
 <533f27c9-e970-449b-a431-4ba41a566aaf@kwiboo.xyz> <10821700.nUPlyArG6x@phil>
In-Reply-To: <10821700.nUPlyArG6x@phil>
From: Midgy Balon <midgy971@gmail.com>
Date: Fri, 27 Mar 2026 10:07:43 +0100
X-Gm-Features: AQROBzC8CnXSa0u5wehgfkvDz7gqUZpnjqEtux6oaO4slyBrfgvJQHeqANw0iXE
Message-ID: <CA+GS1Y3kiRrTZrS7meaHoSgOaputt3RL9iuHrtKqys4qN+uYYg@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.xyz>, linux-rockchip@lists.infradead.org, 
	shawn.lin@rock-chips.com, jonas@kwiboo.se, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_020612_474762_7BFB3877 
X-CRM114-Status: GOOD (  19.69  )
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

SGVsbG8gSGVpa28sCgpJIGFwb2xvZ2l6ZSBmb3IgbWlzc2luZyBKb25hcycgY29tbWVudHMuIEl0
IHdpbGwgYmUgZG9uZSBmb3IgdGhlIG5leHQKdmVyc2lvbiBhcyByZXF1ZXN0ZWQuCkluZGVlZCBD
bGF1ZGUgd29ya3MgIndlbGwiIDpEIC4gSSdsbCBiZSBtb3JlIGNhcmVmdWwgbmV4dCB0aW1lLgoK
VGhhbmtzLAoKTWlkZ3kKCkxlIG1hci4gMjQgbWFycyAyMDI2IMOgIDIzOjI3LCBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPiBhIMOpY3JpdCA6Cj4KPiBIaSBKb25hcywKPgo+IEFtIERp
ZW5zdGFnLCAyNC4gTcOkcnogMjAyNiwgMTg6MTU6MzggTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1h
bHplaXQgc2NocmllYiBKb25hcyBLYXJsbWFuOgo+ID4gSGkgSGVpa28sCj4gPgo+ID4gT24gMy8y
NC8yMDI2IDY6MDQgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBGcmks
IDIwIE1hciAyMDI2IDEwOjQ0OjQxICswMTAwLCBNaWRHOTcxIHdyb3RlOgo+ID4gPj4gVGhlIFJh
ZHhhIFJPQ0sgM0IgdXNlcyBhIFBJNkMyMDEwMCBQQ0llIHJlZmVyZW5jZSBjbG9jayBidWZmZXIg
dG8KPiA+ID4+IHByb3ZpZGUgYSAxMDBNSHogcmVmZXJlbmNlIGNsb2NrIHRvIHRoZSBQQ0llIDMu
MCBQSFkgYW5kIGNvbnRyb2xsZXJzLgo+ID4gPj4gVGhpcyBjaGlwIGlzIGN1cnJlbnRseSBtb2Rl
bGVkIG9ubHkgYXMgYSBmaXhlZCByZWd1bGF0b3IKPiA+ID4+ICh2Y2MzdjNfcGk2Y18wMyksIHdp
dGggbm8gY2xvY2sgb3V0cHV0IHJlcHJlc2VudGF0aW9uLgo+ID4gPj4KPiA+ID4+IFRoZSBQSTZD
MjAxMDAgaXMgYSBjbG9jayBnZW5lcmF0b3IsIG5vdCBhIHBvd2VyIHN1cHBseS4gTW9kZWwgaXQK
PiA+ID4+IHByb3Blcmx5IGFzIGEgZ2F0ZWQtZml4ZWQtY2xvY2ssIGZvbGxvd2luZyB0aGUgcGF0
dGVybiBlc3RhYmxpc2hlZAo+ID4gPj4gZm9yIHRoZSBSb2NrIDUgSVRYIGFuZCBvdGhlciBib2Fy
ZHMgd2l0aCBzaW1pbGFyIFBDSWUgY2xvY2sgYnVmZmVyCj4gPiA+PiBjaGlwcy4KPiA+ID4+Cj4g
PiA+PiBbLi4uXQo+ID4gPgo+ID4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPgo+ID4gTXkgY29tbWVu
dHMgZnJvbSB2MyBbMV0gd2FzIG5vdCBhZGRyZXNzZWQgaW4gdjQgb2NoIHY1LiBFLmcuCj4gPiBy
ZWd1bGF0b3ItYWx3YXlzLW9uL2Jvb3Qtb24gbm90IGJlaW5nIHJlbW92ZWQgYW5kIHJlZHVuZGFu
dCBjb21tZW50cy4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2ZlYzBm
MjVkLTczM2EtNGI2Yy1hZWYxLTJhYzUxYmQxNTc5OEBrd2lib28uc2UvCj4KPiB0aGFuayB5b3Ug
c28gbXVjaCBmb3Igbm90aWNpbmcuIExvb2tzIGxpa2UgdGhhdCBBSSB0aGluZyBpcwo+IHdvcmtp
bmcgIndlbGwiIDstKSAuCj4KPiBJJ3ZlIGRyb3BlZCB0aGUgcGF0Y2ggYW5kIHJlY3JlYXRlZCB0
aGUgZm9yLW5leHQgYnJhbmNoIG5vdy4KPgo+IEBNaWRneSwgcGxlYXNlIGhvbm9yIGZlZWRiYWNr
IGluIGZ1dHVyZSByZXZpc2lvbnMuCj4KPiBUaGFua3MKPiBIZWlrbwo+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
