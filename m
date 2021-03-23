Return-Path: <SRS0=giEr=IV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D71B6C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 20:58:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85276619C3
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 20:58:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85276619C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yIn5hRIpoZYaKHu/McWRV4bMb3L9Gv5uGE8a59SGPTw=; b=Y0MQx249Sim2ExvwXwHcgeA1X
	tu0yPy16viqcVn2jK1FyqTzjHAWd+q67vcmM4z2SgLDOWUhp3rQGUUCqLAB7WRaC0scRsdRNXuGtQ
	LXhB2huzwRjc4TC0jyhFBUlHbpEIQUr8yNEaN1nviz2clvmR6gsmsvaWUaqzo5jMRnaG1ibKELQ0U
	idLzzyOrfY4XNlb+qO0BI3NwA7Qaj1+XbAXiZYOJPYLaJ4bpHqOZUs/3eVJzDymirr4jT3G24KlVe
	9RLoqA4pr976a/rNEtoGEDaEv80n4ibBsJfD2fz7mgPMTbH5IXy+FuNdSAxRzLo9lR+KkuhNokPYe
	YvekHKDwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOo6e-00FkLv-U2; Tue, 23 Mar 2021 20:58:29 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOo6S-00FkKx-QL; Tue, 23 Mar 2021 20:58:19 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so20874928otn.1; 
 Tue, 23 Mar 2021 13:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z4LFUuvacEBtLCJec2bwGks21oMmeJwUPGKWv10C7C8=;
 b=aWqwV9krBYdgh9hR8z79d2Qzw/sRzYFWMsWJk9Ozj4GxrngcfN+8qvMLXiHzdAi3Nt
 LBwARDJl4FwHlwTiJ59wLv6GcfmTMr0VcwMXV7eegwjnD+kVp/IdNgDpWJzFry0eyv5w
 RRtXqv3oidstONhzh13gAtV+oSj1B7yREwtFDmAjPVdc7ng8LlInOO65/DrPuao6NHBF
 dWP35xM7aImsonOMr6Svmpfgm1H+DpBZuTFNb0qpLHPagthaXAHhPjX0OfiwyXQp6Qoy
 KgytKqJKB4wJ8CBRfaGGC3Dd6Ey8ZwCaJjkkbNjVawQBK39Y76oH6pFc5bHexFRVuV1l
 pdmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z4LFUuvacEBtLCJec2bwGks21oMmeJwUPGKWv10C7C8=;
 b=UMugdiLETEFYt5ttPByC07/EJiu8MATK8MEWLArvAIcZbPpMOGqJGdbVgl7S/u+5ob
 StYjzhUrNtI9Mp0h3Uv93AKMb9BxmQz7yZoB1VNIcjrcgUtegqZid0QVbIqlpcPTyUdO
 oJLVu/f66GEp/fmVGN7ofBI/QyCAPS39NfTLePQSPKnu45IkqGuwrlkPFkuv5IzLnEHZ
 uEyWzWQfuqbY1vufc1ahnAuC6Im94ixKwt5jwJr6LFEffOuokvpA6EQUSrVYxgX8Ddrx
 GS18yAOdm84VRD0xg0z9poy3XlwLpXknqVj2dRFTVkCcsuAtg6SSo6c0E56OG7wfxcKv
 I0Eg==
X-Gm-Message-State: AOAM532hZzKcyKfa7+q1XQkOjHMrqRw5RtuquvepwBMhvPO/EXw+Xmvc
 2K/n8Xc5tz5F2xFcw5/OobGVjI1lzFy/bI8Ml2w=
X-Google-Smtp-Source: ABdhPJyHZ1pae6Nl2pvb8qk7MYGjCTtqtWRnJhavUHApDVyIXkNdKqNK1n7ZWNeQ7Hp9hZaoN0cvhGQSiep/mGFUBWU=
X-Received: by 2002:a05:6830:10d3:: with SMTP id
 z19mr202422oto.362.1616533094272; 
 Tue, 23 Mar 2021 13:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210323082410.22818-1-zhangqing@rock-chips.com>
 <20210323082410.22818-3-zhangqing@rock-chips.com>
 <87e50d5b-604b-508c-f3cb-ee07fcf15241@gmail.com>
In-Reply-To: <87e50d5b-604b-508c-f3cb-ee07fcf15241@gmail.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 23 Mar 2021 21:58:07 +0100
Message-ID: <CAFqH_53kBf++SPfir_5mA9Dv2v=u4s1zpqnztAH8Tt2-9dLVnQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: Convert the rockchip power_domain to
 YAML and extend
To: Johan Jonker <jbx6244@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, 
 finley.xiao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_205817_044277_F9B75DAA 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

SGkgRWxhaW5lLAoKTWlzc2F0Z2UgZGUgSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4g
ZGVsIGRpYSBkdC4sIDIzIGRlIG1hcsOnCjIwMjEgYSBsZXMgMTI6MDY6Cj4KPiBIaSBFbGFpbmUs
Cj4KPiBTb21lIGNvbW1lbnRzLiBIYXZlIGEgbG9vayBpZiBpdCdzIHVzZWZ1bCBvciB0aGF0IHlv
dSBkaXNhZ3JlZQo+IHdpdGguLi4ocGFydCAxKQo+Cj4gPT09PT09Cj4gVGhlcmUgaXMgY3VycmVu
dGx5IGFscmVhZHkgYSBwYXRjaCBwcm9wb3NhbCB0aGF0IGRvZXMgdGhlIHNhbWUuCj4gQ291bGQg
eW91IHJlYWQgdGhhdCByZXZpZXcgaGlzdG9yeSBhbmQgcG9ydCB0aGUgZ29vZCB0aGluZ3MgdG8g
eW91ciBvd24KPiBwYXRjaCBzZXJpZT8KPgo+IFJlOiBbUEFUQ0hdIGR0LWJpbmRpbmdzOiBwb3dl
cjogcm9ja2NoaXA6IENvbnZlcnQgdG8ganNvbi1zY2hlbWEKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC8yMDIwMTAwNzE1MTE1OS5HQTIyMTc1NEBib2d1cy8KPgo+IFJl
OiBbUEFUQ0ggdjNdIGR0LWJpbmRpbmdzOiBwb3dlcjogcm9ja2NoaXA6IENvbnZlcnQgdG8ganNv
bi1zY2hlbWEKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDIwMTAw
NzE1MTE1OS5HQTIyMTc1NEBib2d1cy8KPgoKSW4gZmFjdCwgdGhlIGxhdGVzdCB2ZXJzaW9uIGlz
IHY2IHdoaWNoIGNhbiBiZSBmb3VuZCBoZXJlOgoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjEwMjI1MTAyNjQzLjY1MzA5NS0xLWVu
cmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20vCgpGZWVsIGZyZWUgdG8gaW50ZWdyYXRlIGFuZC9v
ciBpbXByb3ZlIHRoYXQgdmVyc2lvbiBpbiB5b3VyIHNlcmllcy4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
