Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D2C8C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:11:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8E5F23110
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 15:11:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C8E5F23110
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6u7wwhbeR2PxS9uxSo7n01qEfK4OqUofu2phD2tia5o=; b=eOOPoJnK0JwhwhgqRTPT5QlE+
	tgwGjFk7ipxUuObfHIORv5pjMm/LWB0VaBKHnfEMP2NtGl3Y03bL2kT2eF0ckrco9jh6DP9F3cwQ0
	rT00oAGVvKudd/quDhj21IxLjY0LOXDf1bP6yeF+KMrJx9pVmp4ZP/OMN8KdIPOYb94jsvWxkcdIL
	PAgOSrcg5N1nzCy75iu9nLtBwF1e6zVdqbF5u67WpjAwuWCmhLaHjb9NKoDvILk4BQ9Xk8hLIdx5W
	hgge/1MaownYDyRtH4RCrA9+Lo7SjhRzYtl8lSCK7MhCgFpm4KGiloM9ceKsOR7citfGirmQBo9dM
	LXfOZ3n4g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1sfi-0001KE-I8; Tue, 19 Jan 2021 15:11:54 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1sff-0001JJ-NQ
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 15:11:52 +0000
Received: by mail-ej1-x631.google.com with SMTP id r12so17618211ejb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Jan 2021 07:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T684pbRiyXTHMjiyj9K2qNkRy+PGwfHnHIkUTOyJyoc=;
 b=rwBg1iZ0GoU89hgJR18WBQvxOXb9/628zja19HwjUGMulIOy/0KmK6IqkjxMHiVfEj
 bTTadX4Iy+kKHnmY+oTOXSLkazhXICmv7dI3rl1EDzAeKsSiG+vNHCbImcHOAycUV4kD
 GtQra359abpwz4RpgVAbEnfXjXNJ42WSzqh2QKh5nB92G9HFFFdrJlF/80ToHu8DJAAR
 DD8AeGBEPhGVtSJlrVX9qKs/M4ueUDJVuNW9reTyHIZhsvv6q3iwlUVYz6P3H+NNd8C1
 ujhVtPMdukkBsOkzwkOS+7GgdutVUxD0InXM8zTabUtFG68IUHFX8WIQJ3ACrYudHtfc
 0uRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T684pbRiyXTHMjiyj9K2qNkRy+PGwfHnHIkUTOyJyoc=;
 b=VmfmrbbB9wh3IxfTpY8LBkuP6Gsp7jk9mleFKkHO3OI7VEV/ROp1EMvJjef3Y6dai0
 VRIlXZ6oZDRhmJfZ+LM3mD5efyLq2ev/MA5j9Bjok2ixpKs7M8NhVWbkG6hxGRun+dQ7
 8VChWr3cAYB6KJA7SNCRE5/JJeYgJRAt6pS0aykaUngmT/sau+79u6jtdSy9Eo2Tb/FW
 5C9U2yi7b/zjSXoRIevpNRvbiWVvAYeHbVi9fAi4or0BI5gy+xfQaVfWwMGkdgSXyIzh
 o/y/kLa6FQiAERosAi//jYJziZWeAw0R2cTN4rgWl+eFANKAYRHxMVOVwdo3YlJGiljp
 1LBQ==
X-Gm-Message-State: AOAM530Vqruvdnd3NQ5k0ZtE97yIzmv/ZXY/zCyQVF9A+7O031X5l1L0
 8bxm8KdtJBFv9blf+2s94gw=
X-Google-Smtp-Source: ABdhPJzFqLgbC9mdVhryq9kB69wAPD08K3GAiGu/JoWn1hmEvjzNPYCzX2bcVz/GW8glarmpD4P5cA==
X-Received: by 2002:a17:906:a20e:: with SMTP id
 r14mr3240679ejy.404.1611069110542; 
 Tue, 19 Jan 2021 07:11:50 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 x17sm13053730edq.77.2021.01.19.07.11.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 07:11:50 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Simon Xue <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <20210118091739.247040-2-xxm@rock-chips.com>
 <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com> <2336601.uoxibFcf9D@diego>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <677c102d-0b9b-1a12-0ac6-4dd0a1023b68@gmail.com>
Date: Tue, 19 Jan 2021 16:11:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <2336601.uoxibFcf9D@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_101151_816297_E014C47F 
X-CRM114-Status: GOOD (  21.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pci@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ltb24sIEhlaWtvLAoKT24gMS8xOS8yMSAyOjE0IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPiBIaSBKb2hhbiwKPiAKPiBBbSBEaWVuc3RhZywgMTkuIEphbnVhciAyMDIxLCAxNDowNzo0
MSBDRVQgc2NocmllYiBKb2hhbiBKb25rZXI6Cj4+IEhpIFNpbW9uLAo+Pgo+PiBUaGFuayB5b3Ug
Zm9yIHRoaXMgcGF0Y2ggZm9yIHJrMzU2OCBwY2llLgo+Pgo+PiBJbmNsdWRlIHRoZSBSb2NrY2hp
cCBkZXZpY2UgdHJlZSBtYWludGFpbmVyIGFuZCBhbGwgb3RoZXIgcGVvcGxlL2xpc3RzCj4+IHRv
IHRoZSBDQyBsaXN0Lgo+Pgo+PiAuL3NjcmlwdHMvY2hlY2twYXRjaC5wbCAtLXN0cmljdCA8cGF0
Y2gxPiA8cGF0Y2gyPgo+Pgo+PiAgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC0tbm9yb2xl
cyAtLW5vcm9sZXN0YXRzIC0tbm9naXQtZmFsbGJhY2sKPj4gLS1ub2dpdCA8cGF0Y2gxPiA8cGF0
Y2gyPgo+Pgo+PiBnaXQgc2VuZC1lbWFpbCAtLXN1cHByZXNzLWNjIGFsbCAtLWRyeS1ydW4gLS1h
bm5vdGF0ZSAtLXRvCj4+IGhlaWtvQHNudGVjaC5kZSAtLWNjIDwuLj4gPHBhdGNoMT4gPHBhdGNo
Mj4KPj4KPj4gVGhpcyBTb0MgaGFzIG5vIHN1cHBvcnQgaW4gbWFpbmxpbmUgbGludXgga2VybmVs
IHlldC4KPj4gSW4gYWxsIHRoZSBmb2xsb3dpbmcgeWFtbCBkb2N1bWVudHMgZm9yIHJrMzU2OCB3
ZSBuZWVkIGhlYWRlcnMgd2l0aAo+PiBkZWZpbmVzIGZvciBjbG9ja3MgYW5kIHBvd2VyIGRvbWFp
bnMsIGV0Yy4KPj4KPj4gRm9yIGV4YW1wbGU6Cj4+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9j
ay9yazM1NjgtY3J1Lmg+Cj4+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazM1NjgtcG93
ZXIuaD4KPj4KPj4gQ291bGQgUm9ja2NoaXAgc3VibWl0IGZpcnN0IGNsb2NrcyBhbmQgcG93ZXIg
ZHJpdmVycyBlbnRyaWVzIGFuZCBhIGJhc2ljCj4+IHJrMzU2OC5kdHNpICsgZXZiIGR0cz8KPj4g
SW5jbHVkZSBhIHBhdGNoIHRvIHRoaXMgc2VyaWUgd2l0aCAzIHBjaWUgbm9kZXMgYWRkZWQgdG8g
cmszNTY4LmR0c2kuCj4+Cj4+IEEgZHRic19jaGVjayBvbmx5IHdvcmtzIHdpdGggYSBjb21wbGV0
ZSBkdHNpIGFuZCBldmIgZHRzLgo+Pgo+PiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+PiBE
VF9TQ0hFTUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2Nr
Y2hpcC1kdy1wY2llLnlhbWwKPj4KPj4gT24gMS8xOC8yMSAxMDoxNyBBTSwgU2ltb24gWHVlIHdy
b3RlOgo+Pj4gU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+
PiAtLS0KPj4+ICAuLi4vYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCAgICAgICAg
fCAxMDEgKysrKysrKysrKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEwMSBpbnNlcnRp
b25zKCspCj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2ll
LnlhbWwKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmZh
NjY0Y2ZmZmIyOQo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPj4+IEBAIC0wLDAgKzEs
MTAxIEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTIt
Q2xhdXNlKQo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCMKPj4+ICskc2NoZW1hOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4+ICsKPj4+ICt0
aXRsZTogRGVzaWduV2FyZSBiYXNlZCBQQ0llIFJDIGNvbnRyb2xsZXIgb24gUm9ja2NoaXAgU29D
cwo+Pj4gKwo+Pgo+Pj4gK21haW50YWluZXJzOgo+Pj4gKyAgLSBTaGF3biBMaW4gPHNoYXduLmxp
bkByb2NrLWNoaXBzLmNvbT4KPj4+ICsgIC0gU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+
Cj4+Cj4+IG1haW50YWluZXJzOgo+PiAgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4KPj4KPj4gQWRkIG9ubHkgcGVvcGxlIHdpdGggbWFpbnRhaW5lciByaWdodHMuCj4gCj4gSSdk
IGRpc2FncmVlIG9uIHRoaXMgOy0pCgpBbGwgcm9hZHMgbGVhZHMgdG8gSGVpa28uLi4gOykKCkl0
IHRha2VzIGxvbmcgdGVybSBjb21taXRtZW50LgpZZWFyIGluLCB5ZWFyIG91dC4KS2VlcGluZyB5
b3Vyc2VsZiB1cCB0byBkYXRlIHdpdGggdGhlIGxhdGVzdCBwY2VpIGRldmVsb3BtZW50LgpDb21t
dW5pY2F0ZSBpbiBFbmdsaXNoLgpCZSBhYmxlIHRvIHN1Ym1pdCBwYXRjaGVzIHdpdGhvdXQgZXJy
b3JzLi4uIDspClJldmlldyBvdGhlciBwZW9wbGVzIHBhdGNoZXMuClJlc3BvbmQgaW4gc2hvcnQg
dGltZS4KQnVnIGZpeGluZy4KCklmIHRoYXQncyB3aGF0IHlvdSByZWFsbHkgd2FudCwgdGhlbiB5
b3UgbXVzdCBpbmNsdWRlIGEgcGF0Y2ggdG8gdGhpcwpzZXJpZSBmb3IgTUFJTlRBSU5FUlMuCgpD
aGVjayBwYXRjaCB3aXRoOgoKLi9zY3JpcHRzL3BhcnNlLW1haW50YWluZXJzLnBsIC0taW5wdXQ9
TUFJTlRBSU5FUlMgLS1vdXRwdXQ9TUFJTlRBSU5FUlMKLS1vcmRlcgoKT3RoZXJ3aXNlIGl0J3Mg
c2FmZSB0byBpbmNsdWRlIHRoYXQgcGVyc29uIG1lbnRpb25lZCBhYm92ZS4KCj4gCj4gVGhlIG1h
aW50YWluZXIgZm9yIGluZGl2aWR1YWwgZHJpdmVycyBzaG91bGQgYmUgdGhlIHBlcnNvbnMgd2hv
IGFyZQo+IGFjdHVhbGx5IGtub3cgdGhlIGhhcmR3YXJlLiBXZSBoYXZlIGluZGl2aWR1YWwgUm9j
a2NoaXAgZGV2ZWxvcGVycwo+IHRha2luZyBjYXJlIG9mIG90aGVyIGRyaXZlcnMgYXMgd2VsbCBh
bHJlYWR5Lgo+IAo+IEFuZCBub3JtYWxseSBzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHNob3Vs
ZCBhbHJlYWR5IGluY2x1ZGUgbWUKPiBkdWUgdG8gdGhlIHdpbGRjYXJkIGZvciB0aGluZ3MgaGF2
aW5nICJyb2NrY2hpcCIgaW4gdGhlIG5hbWUuCj4gCj4gCj4gSGVpa28KPiAKPiAKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
