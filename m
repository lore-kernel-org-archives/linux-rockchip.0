Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CEE4C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 18:38:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C445761976
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 18:38:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C445761976
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PdbVvSAybCLSavLNCGyFccvdSL/szNIOeE4SXTbwlJo=; b=eKE4Jqtyh5LS/aHD2Vw+JK/n/
	5n4TXg4QJZKCD5dCj/D9jL7fsfog8N3bigeZldQywskcE97f8YwlaECx2TW8FaSE712uhc4KlISHI
	srRwLCWc0NeGGbYp/U1JDhXpPvdmcWly5JGsT9qGs92PwYGI4StkxlE9Mv7u5meeSTj+MGzez+dKd
	/IMRWDur9en6AYtIUoR2+fPktieVSj6cXJ8r0hLgP4Mo8piBONRZSe61j0wWWkmvQrUBWkx0PrCXm
	H6Ky83WidbjSBRt5EhgYHIXCwEjVdCP9sdYde3N/0eYkpRvlhH/1G0vIx8Rsyp/TSpx68ih+EpejN
	nbDck50Tg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNK1G-007yK5-59; Fri, 19 Mar 2021 18:38:46 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNK1C-007yIv-35
 for linux-rockchip@lists.infradead.org; Fri, 19 Mar 2021 18:38:44 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e18so10102967wrt.6
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Mar 2021 11:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MYEoRUOi3MntuNkgcxlA6PixhZq/KlalSw6PsKJS1mU=;
 b=SUAFQoXy615WjK85B20Of9o5+6NbEcn/9xeVNPrxbOALG3VcWJDiiAEqTTzRKIXDzo
 WxFi7vp9gDN8wGTK6caLhl4yrVdp+a4TpRE9h5QzU/BfvRSIjusPNwcZYfS4CiBOkpdi
 17P0ouNK6+RS5cMOfbss/M6p3HRgbD+jYpQgkJGjSloocdpBJ+YQGLAgjY41pZWJOJv0
 Km39jOr+Bi3VYPUEPZmr4g64G327d3XI33uY9xPG5J5+gUXpSRMB/s5A8FwKroROPdlo
 N2n5AqzZTlpG0of7lTEads3/Iehu4hSSKdtCS1954fuMj68J4sdc93YpAKbJbxBtlof6
 B0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MYEoRUOi3MntuNkgcxlA6PixhZq/KlalSw6PsKJS1mU=;
 b=OQEEv7K8ci0DJgLDjb2z+u5O0mtpJ2aWsUenwanR7L7+4OczCOwp+JtHVR1D4n0Gi4
 BNa9C3Zk83dubcGB9NAPtPFVmNG91ZyqTiKrVW8GQcFLHBYJegmVZ64yky5guP1G9Y8+
 /ZQe1kk9+d7DtNFOf/OJaT1aKKlF0J06QDbI5rD0fg4uo2Ew0n5wqOaRoN6Vx+He4+4d
 Hhd2aQ9cNhbNbEPvyyn6YetgeIqYCZSit+E6GAz73nUfiTLAaZRsPL7wrue+0CET+tAB
 XqB8go9qp/z6RC+FwUKSR3t4D9dVyB4Mk4UwvFw0hnC0uqGncXGfpXqU1hJ3A9Thl1+N
 orow==
X-Gm-Message-State: AOAM531NHiEl3l6IUgDmWi0MpGiNXhuZ5Ph2/Il0nUXK+GD6gic1wjsZ
 xVFuEMFr9tOkm3rm4jGtB8SqeA==
X-Google-Smtp-Source: ABdhPJy1by9RHeFpSNx+To1gQgU5tcR6deACavE7xJJbx3XBXQciKlwzam3By8vz828NoTt3oZmW9A==
X-Received: by 2002:adf:f78f:: with SMTP id q15mr5769517wrp.383.1616179115865; 
 Fri, 19 Mar 2021 11:38:35 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85?
 ([2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85])
 by smtp.googlemail.com with ESMTPSA id p27sm7792340wmi.12.2021.03.19.11.38.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Mar 2021 11:38:35 -0700 (PDT)
Subject: Re: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for
 GPU
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210319110511.24787-1-daniel.lezcano@linaro.org>
 <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
 <9322db05-2cad-453c-ec1b-1fdb3df142fa@linaro.org>
 <11480a47-47da-c5b3-edad-c2dd8edb2cd9@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <54f3d4d4-ca01-d00c-09d6-4cf100538cbe@linaro.org>
Date: Fri, 19 Mar 2021 19:38:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <11480a47-47da-c5b3-edad-c2dd8edb2cd9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_183842_225891_3C7A5DBE 
X-CRM114-Status: GOOD (  31.05  )
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

T24gMTkvMDMvMjAyMSAxOTowNSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjEtMDMtMTkg
MTQ6MzUsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pgo+PiBIaSBSb2JpbiwKPj4KPj4gT24gMTkv
MDMvMjAyMSAxMzoxNywgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4gT24gMjAyMS0wMy0xOSAxMTow
NSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4gVGhlIERUUE0gZnJhbWV3b3JrIGlzIGxvb2tp
bmcgZm9yIHVwc3RyZWFtIFNvQyBjYW5kaWRhdGVzIHRvIHNoYXJlIHRoZQo+Pj4+IHBvd2VyIG51
bWJlcnMuCj4+Pj4KPj4+PiBXZSBjYW4gc2VlIGFyb3VuZCBkaWZmZXJlbnQgbnVtYmVycyBidXQg
dGhlIG9uZSB3aGljaCBzZWVtcyB0byBiZQo+Pj4+IGNvbnNpc3RlbnQgd2l0aCB0aGUgaW5pdGlh
bCBwb3N0IGZvciB0aGUgdmFsdWVzIG9uIHRoZSBDUFVzIGNhbiBiZQo+Pj4+IGZvdW5kIGluIHRo
ZSBwYXRjaCBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvODEwMTU5Lwo+
Pj4KPj4+IFRoZSBrZXJuZWwgaGFja2VyIGluIG1lIHdvdWxkIGJlIG1vcmUgaW5jbGluZWQgdG8g
dHJ1c3QgdGhlIEJTUCB0aGF0IHRoZQo+Pj4gdmVuZG9yIGFjdGl2ZWx5IHN1cHBvcnRzIHRoYW4g
YSA1LXllYXItb2xkIHBhdGNoIHRoYXQgd2FzIG5ldmVyIHB1cnN1ZWQKPj4+IHVwc3RyZWFtLiBB
cHBhcmVudGx5IHRoYXQgd2FzIGxhc3QgdXBkYXRlZCBtb3JlIHJlY2VudGx5Ogo+Pj4KPj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvY29tbWl0Lzk4ZDQ1MDVlMWJk
NjJmZjAyOGJkNzlmYmQ4Mjg0ZDY0YjZmNDY4ZjgKPj4+Cj4+Cj4+IFllcywgSSd2ZSBzZWVuIHRo
aXMgdmFsdWUgYWxzby4KPj4KPj4+IFRoZSBleC1tYXRoZW1hdGljaWFuIGluIG1lIGNhbid0IGV2
ZW4gY29tbWVudCBlaXRoZXIgd2F5IHdpdGhvdXQKPj4+IGV2aWRlbmNlIHRoYXQgd2hhdGV2ZXIg
bW9kZWwgZXhwZWN0cyB0byBjb25zdW1lIHRoaXMgdmFsdWUgaXMgZXZlbgo+Pj4gY29tcGFyYWJs
ZSB0byB3aGF0ZXZlciAiYXJtLG1hbGktc2ltcGxlLXBvd2VyLW1vZGVsIiBpcy4gPgo+Pj4gVGhl
IHdheSB0aGUKPj4+IGxhdHRlciBhcHBhcmVudGx5IG5lZWRzIGFuIGV4cGxpY2l0ICJzdGF0aWMi
IGNvZWZmaWNpZW50IGFzIHdlbGwgYXMgYQo+Pj4gImR5bmFtaWMiIG9uZSwgYW5kIHRoZSB2YWx1
ZSBoZXJlIGJlaW5nIG5lYXJseSAzIHRpbWVzIHRoYXQgb2YgYQo+Pj4gc2ltaWxhcmx5LW5hbWVk
IG9uZSBpbiBhY3RpdmUgdXNlIGRvd25zdHJlYW0gKENocm9tZU9TIGFwcGVhcnMgdG8gc3RpbGwK
Pj4+IGJlIHVzaW5nIHRoZSB2YWx1ZXMgZnJvbSBiZWZvcmUgdGhlIGFib3ZlIGNvbW1pdCksIGNl
cnRhaW5seSBpbmNsaW5lIG1lCj4+PiB0byB0aGluayB0aGV5IG1heSBub3QgYmUuLi4KPj4KPj4g
U29ycnksIEknbSBtaXNzaW5nIHRoZSBwb2ludCA6Lwo+Pgo+PiBXZSBkcm9wcGVkIGluIHRoZSBr
ZXJuZWwgYW55IHN0YXRpYyBwb3dlciBjb21wdXRhdGlvbiBiZWNhdXNlIGFzIHRoZXJlCj4+IHdh
cyBubyB2YWx1ZSwgdGhlIHJlc3VsdGluZyBjb2RlIHdhcyBjb25zaWRlcmVkIGRlYWQuIFNvIHdl
IHJlbHkgb24gdGhlCj4+IGR5bmFtaWMgcG93ZXIgb25seS4KPiAKPiBSaWdodCwgc28gYSAyLWZh
Y3RvciBtb2RlbCBpcyBjbGVhcmx5IG5vdCBpZGVudGljYWwgdG8gYSAxLWZhY3RvciBtb2RlbCwK
PiBzbyBob3cgZG8gd2Uga25vdyB0aGF0IGEgdmFsdWUgZm9yIG9uZSBpcyB2YWxpZCBmb3IgdGhl
IG90aGVyLCBldmVuIGlmCj4gaXQgaGFwcGVucyB0byBoYXZlIGEgc2ltaWxhciBuYW1lPyBJJ20g
bm90IHNheWluZyB0aGF0IGl0IGlzIG9yIGlzbid0OyBJCj4gZG9uJ3Qga25vdy4gSWYgc29tZW9u
ZSBjYW4gcG9pbnQgdG8gdGhlIGRvd25zdHJlYW0gY29lZmZpY2llbnQKPiBkZWZpbml0aW9uIGJl
aW5nIGlkZW50aWNhbCB0byB0aGUgdXBzdHJlYW0gb25lIHRoZW4gZ3JlYXQsIGxldCdzIHVzZQo+
IHRoYXQgYXMganVzdGlmaWNhdGlvbi4gSWYgbm90LCB0aGVuIHRoZSBqdXN0aWZpY2F0aW9uIG9m
IG9uZSBhcmJpdHJhcnkKPiBtZWFuaW5nbGVzcyBudW1iZXIgb3ZlciBhbnkgb3RoZXIgaXMgYSBi
aXQgbWlzbGVhZGluZy4KClRoYXQncyBhIGNhbGwgOikKCj4+Pj4gSSBkb24ndCBrbm93IHRoZSBw
cmVjaXNpb24gb2YgdGhpcyB2YWx1ZSBidXQgaXQgaXMgYmV0dGVyIHRoYW4KPj4+PiBub3RoaW5n
Lgo+Pj4KPj4+IEJ1dCBpcyBpdD8gSWYgaXQgbGVhZHMgdG8gc29tZSB0aHJvdHRsaW5nIG1lY2hh
bmlzbSBraWNraW5nIGluIGFuZAo+Pj4gY3JpcHBsaW5nIEdQVSBwZXJmb3JtYW5jZSBiZWNhdXNl
IGl0J3MgbWFzc2l2ZWx5IG92ZXJlc3RpbWF0aW5nIHBvd2VyCj4+PiBjb25zdW1wdGlvbiwgdGhh
dCB3b3VsZCBiZSBvYmplY3RpdmVseSB3b3JzZSBmb3IgbW9zdCB1c2Vycywgbm8/Cj4+Cj4+IE5v
IGJlY2F1c2UgdGhlcmUgaXMgbm8gc3VzdGFpbmFibGUgcG93ZXIgc3BlY2lmaWVkIGZvciB0aGUg
dGhlcm1hbCB6b25lcwo+PiByZWxhdGVkIHRvIHRoZSBHUFUuCj4gT0ssIHRoYXQncyBzb21lIHJl
YXNzdXJhbmNlIGF0IGxlYXN0LiBEb2VzIHRoZSBleGFjdCB2YWx1ZSBoYXZlIGFueQo+IG1hdGVy
aWFsIGVmZmVjdD8gCgpZZXMsIGl0IGhhcyB3aGVuIGl0IGlzIGNvbWJpbmVkIHdpdGggb3RoZXIg
ZGV2aWNlcyBoYXZpbmcgYWxzbyBwb3dlcgp2YWx1ZXMsIGxpa2UgdGhlIENQVXMgYW5kIGhvcGVm
dWxseSB0aGUgRE1DIHNvb24uCgpJZiB3ZSBjYW4gaGF2ZSBtb3JlIG9yIGxlc3MgY29uc2lzdGVu
dCBwb3dlciBudW1iZXJzIGZvciB0aGUgRE1DLCBDUFUKYW5kIEdQVSBvbiB0aGUgcm9jazk2MCwg
d2l0aCB0aGUgdGhlcm1hbCB6b25lIGhhdmluZyB0aGVzZSB0aHJlZSBoZWF0aW5nCnNvdXJjZXMs
IHdlIGNhbiB1c2UgdGhlIERUUE0gZnJhbWV3b3JrIHRvIGFjdCBvbiB0aGUgcG93ZXIgb2YgdGhl
IHdob2xlLgoKSSBkb24ndCBrbm93IHRoZSBiZXN0IGNvZWZmaWNpZW50LCA3MzMsIDk3NyBvciAx
NzgwIFsxXQoKVGhlIHZhbHVlIG9mIDk3NyBzb3VuZCB0byBtZSBhcyBhIHN0YXJ0aW5nIHBvaW50
LgoKCgpbMV0KaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhp
cmRfcGFydHkva2VybmVsLysvZmFjdG9yeS1ncnUtODY1Mi5CLWNocm9tZW9zLTQuNC9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ncnUta2V2aW4tcjMuZHRzCgo+IElmIG5vdCwg
d2hhdCdzIHRvIHN0b3AgdXMgZnJvbSB1c2luZyBhbiBvYnZpb3VzbHkKPiBtYWRlLXVwIHZhbHVl
IGxpa2UgMSwgYW5kIHNheWluZyBzbz8KCgoKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+
IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93
IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29r
IHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
