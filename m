Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E6BC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 17:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLQCSZcRy7sQyJ4Vvzt5oQjx6QzXUdHkLLq5No4zww4=; b=djx8H544Mo/oHl
	XKyLQT/5XqZo7lXQBZIhS67NlXyF1gMb0QSIj9fu/WnV/s1b3tl+qW/RMZCyUEyuqz1G1izPe45V0
	wvp72pivK/H95Xzw53A+fTVUeWzNPm6wgJ+eV6XZza6XVKcO72bXBOE0mylxyy3i++wxrNnIA9ZMo
	GSEJlNbV+Yx1RdJDDYxpgWPlgbLRcQmuxzcEKvD1ZBDufHs2Q+MYUrMS/MSDY8uKGIX5BT6UhoXdX
	DXnJozsvaZMLr2vHo2DvkuP1SVwx9dOJSOT04zDx0lRHb1w18O/5OZK/NCVsVhufHz9VvBEwhY0Je
	g5OTjDnw0tQbQrOuFSZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBedI-00GBOq-02;
	Fri, 08 Dec 2023 17:27:24 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBedF-00GBLR-1O;
	Fri, 08 Dec 2023 17:27:23 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1fb37f25399so1426585fac.1;
        Fri, 08 Dec 2023 09:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702056434; x=1702661234; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5y6HCRPZuFf1XHIVNqIPnl7q9aMDKbjcEIeBmVq9aVI=;
        b=S0VkuxYPerS9/yQ/eA4/Uk4q7wOkAjkH0NjLYz23URWK+aFXJIESSbLvmvZzd83Gkz
         7BYz3O+MA30PfSWk4AdqnXhmOYtRy5gs+Zdd/mYhD120y5V0t086XcY0JF98xnLF5aGy
         nvep9YN8+ijXRABA9P/pjFwe8W5GlNwxbftJlrn2wXi2oB8tN4xfrODMexWq3HgeO4mK
         13OyrUqftuM1k226nV04RDTRtTDrk+Ci+KvcXcKyrnVmhpXhawcY6Ps8iltbzBaWTMz7
         XdTOG6iUUACqFiAuP0vmDOb6/j6MNE5rA28b8rMU/r1UEW2xOIDUHOHIDEwQ7UzXAbOV
         LVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702056434; x=1702661234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5y6HCRPZuFf1XHIVNqIPnl7q9aMDKbjcEIeBmVq9aVI=;
        b=knxi/DDJgs1ZQKD8O1eIddYNXJT2qxTI6FddODa9jn3ovwU/qqHboGrhXU9aGOXJ4r
         Pb3zOnlGhN3Q0sP6LQOh3xM4DBJh7Qmv1xcMCRtDRReXrtWKOfJUKf9ZWBz8Ik1uPrw8
         /toVou1BquA0fkZnygfErFeX0nzyKOiskTord7PD8QyNrG6mwsH8ISZFly+gNqeYin5v
         rJGjlaiWUXTD7nkv36MCsMHEFePSlOxlYLiCbZHF27eK+YYt0vQ6CaaLJFbZP5EaZdUd
         dOvCZR+xkvPPHf4NAEefqgkw62pq+sgKqOweqElC276hKPN4aCuZBPfozOTl0/rUgw+g
         +dyQ==
X-Gm-Message-State: AOJu0YygwLcPUatMMFACMDqH6FEGBuOvvWOycxE8XhFXta5reFYmxzxa
	VniM94vADQxcjFeOTOK087NHhLbRigrNpSry
X-Google-Smtp-Source: AGHT+IHR5Nsu7OYrZNkh8DwheOqBrgowsG8O2QZINkUfloB75k/ah2w7bC8zeTWkDF7wcUry3kTqww==
X-Received: by 2002:a05:6870:858d:b0:1fa:f418:d071 with SMTP id f13-20020a056870858d00b001faf418d071mr406825oal.23.1702056434159;
        Fri, 08 Dec 2023 09:27:14 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:de4c:e3ab:ccaa:1887? ([2001:470:42c4:101:de4c:e3ab:ccaa:1887])
        by smtp.gmail.com with ESMTPSA id rk7-20020a05687164c700b001fa39dfef88sm474815oab.37.2023.12.08.09.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 09:27:13 -0800 (PST)
Message-ID: <66f413d2-1a5b-b9e3-3c86-35a1d150f486@gmail.com>
Date: Fri, 8 Dec 2023 10:27:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=c5=82a?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
References: <20231208062510.893392-1-CFSworks@gmail.com>
 <6311244.MhkbZ0Pkbq@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <6311244.MhkbZ0Pkbq@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_092721_468945_05FC7026 
X-CRM114-Status: GOOD (  34.81  )
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

CgpPbiAxMi84LzIzIDA0OjA1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBTYW0sCj4gCj4g
QW0gRnJlaXRhZywgOC4gRGV6ZW1iZXIgMjAyMywgMDc6MjU6MTAgQ0VUIHNjaHJpZWIgU2FtIEVk
d2FyZHM6Cj4+IFRoZSBSSzM1ODggUENJZSAzLjAgY29udHJvbGxlciBzZWVtcyB0byBoYXZlIHVu
cHJlZGljdGFibGUgYmVoYXZpb3Igd2hlbgo+PiBubyBDTEtSRVEvUEVSU1QvV0FLRSBwaW5zIGFy
ZSBjb25maWd1cmVkIGluIHRoZSBwaW5tdXguIEluIHBhcnRpY3VsYXIsIGl0Cj4+IHdpbGwgc29t
ZXRpbWVzICh2YXJ5aW5nIGJldHdlZW4gc3BlY2lmaWMgUkszNTg4IGNoaXBzLCBub3Qgb3ZlciB0
aW1lKSBzaHV0Cj4+IG9mZiB0aGUgREJJIGJsb2NrLCBhbmQgcmVhZHMgdG8gdGhpcyByYW5nZSB3
aWxsIGluc3RlYWQgc3RhbGwKPj4gaW5kZWZpbml0ZWx5Lgo+Pgo+PiBXaGVuIHRoaXMgaGFwcGVu
cywgaXQgd2lsbCBwcmV2ZW50IExpbnV4IGZyb20gYm9vdGluZyBhbHRvZ2V0aGVyLiBUaGUKPj4g
UENJZSBkcml2ZXIgd2lsbCBzdGFsbCB0aGUgQ1BVIGNvcmUgb25jZSBpdCBhdHRlbXB0cyB0byBy
ZWFkIHRoZSB2ZXJzaW9uCj4+IGluZm9ybWF0aW9uIGZyb20gdGhlIERCSSByYW5nZS4KPj4KPj4g
Rml4IHRoaXMgYm9vdCBoYW5nIGJ5IGFkZGluZyB0aGUgY29ycmVjdCBwaW5jdHJsIGNvbmZpZ3Vy
YXRpb24gdG8gdGhlCj4+IFBDSWUgMy4wIGRldmljZSBub2RlLCB3aGljaCBpcyB0aGUgcHJvcGVy
IHRoaW5nIHRvIGRvIGFueXdheS4gV2hpbGUKPj4gd2UncmUgYXQgaXQsIGFsc28gYWRkIHRoZSBu
ZWNlc3NhcnkgY29uZmlndXJhdGlvbiB0byB0aGUgUENJZSAyLjAgbm9kZSwKPj4gd2hpY2ggbWF5
IG9yIG1heSBub3QgZml4IHRoZSBlcXVpdmFsZW50IHByb2JsZW0gb3ZlciB0aGVyZSAtLSBidXQg
aXMgdGhlCj4+IHByb3BlciB0aGluZyB0byBkbyBhbnl3YXkuIDopCj4+Cj4+IEZpeGVzOiAyODA2
YTY5ZjNmZWY2ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBUdXJpbmcgUksxIFNvTSBzdXBw
b3J0IikKPj4gU2lnbmVkLW9mZi1ieTogU2FtIEVkd2FyZHMgPENGU3dvcmtzQGdtYWlsLmNvbT4K
Pj4gLS0tCj4+Cj4+IEhpIGxpc3QsCj4+Cj4+IENvbXBhcmVkIHRvIHYxLCB2MiByZW1vdmVzIHRo
ZSBgcmVzZXQtZ3Bpb3NgIHByb3BlcnRpZXMgYXMgd2VsbCAtLSB0aGlzIHNob3VsZAo+PiBnaXZl
IGNvbnRyb2wgb2YgdGhlIFBDSWUgcmVzZXRzIGV4Y2x1c2l2ZWx5IHRvIHRoZSBQQ0llIGNvcmVz
LiAoQW5kIGV2ZW4gaWYgdGhlCj4+IGByZXNldC1ncGlvc2AgcHJvcHMgaGFkIG5vIGVmZmVjdCBp
biB2MSwgaXQnZCBiZSBjb25mdXNpbmcgdG8gaGF2ZSB0aGVtIHRoZXJlLikKPiAKPiBIbW0sIEkn
ZCB0aGluayB0aGlzIGNvdWxkIHJlc3VsdCBpbiBkaWZmZXJpbmcgYmVoYXZpb3VyLgo+IAo+IEku
ZS4gSSB0cmllZCB0aGUgc2FtZSBvbiBhIGRpZmZlcmVudCBib2FyZCB3aXRoIGEgbnZtZSBkcml2
ZSBvbiB0aGUgcGNpMzB4NAo+IGNvbnRyb2xsZXIuIEJ1dCBtb3ZpbmcgdGhlIHJlc2V0IGZyb20g
dGhlIGdwaW8td2F5IHRvICJqdXN0IiBzZXR0aW5nIHRoZQo+IHBlcnN0biBwaW5jdHJsLCBzaW1w
bHkgaHVuZyB0aGUgY29udHJvbGxlciB3aGVuIHByb2JpbmcgdGhlIGRldmljZS4KCkFoLCBJJ20g
Z3Vlc3NpbmcgaXQgZGllZCBpbjoKdmVyID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCBQQ0lFX1ZF
UlNJT05fTlVNQkVSKTsKCklmIHNvLCB0aGF0J3MgdGhlIHNhbWUgaGFuZyB0aGF0IHRoaXMgcGF0
Y2ggaXMgYWltaW5nIHRvIHNvbHZlLiBJJ20gCnN0YXJ0aW5nIHRvIHdvbmRlciBpZiBoYXZpbmcg
bXV4ZWQgcGlucyAhPSAxIGZvciBhIGdpdmVuIHNpZ25hbCB1cHNldHMgCnRoZSBSQyhzKS4gSXMg
eW91ciBib2FyZCAoaW4gYW4gZWFybGllciBib290IHN0YWdlOiAKcmVzZXQvbWFza3JvbS9ib290
bG9hZGVyKSBtdXhpbmcgYSBkaWZmZXJlbnQgcGVyc3RuIHBpbiBvcHRpb24gdG8gdGhhdCAKY29u
dHJvbGxlciAoYW5kIExpbnV4IGRvZXNuJ3Qga25vdyB0byBjbGVhciBpdCBhd2F5KT8gVGhlbiB3
aGVuIHlvdSBhZGQgCnRoZSBwZXJzdG4gcGluY3RybCB0aGUgdG90YWwgbnVtYmVyIG9mIHBlcnN0
bnMgbXV4ZWQgdG8gdGhlIGNvbnRyb2xsZXIgCmNvbWVzIHRvIDIsIGFuZCB3aXRob3V0IGEgcmVz
ZXQtZ3Bpb3MgPSA8Li4uPjsgdG8gdGFrZSBpdCBhd2F5IGFnYWluLCAKdGhhdCBudW1iZXIgc3Rh
eXMgYXQgMiB0byBjYXVzZSB0aGUgaGFuZyB1cG9uIHRoZSBEQkkgcmVhZD8KCklmIHNvLCB0aGF0
J2QgbWVhbiB0aGUgY2hhbmdlIHJlc29sdmVzIHRoZSBoYW5nIGZvciBtZSwgYmVjYXVzZSBpdCAK
YnJpbmdzIHRoZSB0b3RhbCB1cCB0byAxIChmcm9tIDApLCBidXQgYWxzbyBjYXVzZXMgdGhlIGhh
bmcgZm9yIHlvdSwgCmJlY2F1c2UgaXQgYnJpbmdzIHRoZSB0b3RhbCB1cCB0byAyIChhd2F5IGZy
b20gMSkuCgo+IAo+IFNvIEkgZ3Vlc3MgSSdkIHRoaW5rIHRoZSBiZXN0IHdheSB3b3VsZCBiZSB0
byBzcGxpdCB0aGUgcGluY3RybCB1cCBpbnRvIHRoZQo+IDMgc2VwYXJhdGUgZnVuY3Rpb25zIChj
bGtyZXFuLCBwZXJzdG4sIHdha2VuKSBzbyB0aGF0IGJvYXJkcyBjYW4gaW5jbHVkZQo+IHRoZW0g
aW5kaXZpZHVhbGx5LgoKTW0sIG1heWJlLiBUaG91Z2ggdGhhdCBtaWdodCBiZSBtb3JlIGFwcHJv
cHJpYXRlIGlmIGEgYm9hcmQgY29tZXMgYWxvbmcgCnRoYXQgZG9lc24ndCBjb25uZWN0IGFsbCBv
ZiB0aG9zZSBzaWduYWxzIHRvIHRoZSBzYW1lIGdyb3VwIG9mIHBpbnMuIEkgCndvcnJ5IHRoYXQg
YXR0ZW1wdGluZyB0byBzb2x2ZSB0aGlzIGhhbmcgYnkgZG9pbmcgdGhhdCB3aWxsIGluc3RlYWQg
anVzdCAKbWFzayB0aGUgcmVhbCBwcm9ibGVtLgoKPiAKPiBOb2JvZHkgaXMgdXNpbmcgdGhlIGNv
bnRyb2xsZXIgcGluY3RybCBlbnRyaWVzIHNvIGZhciBhbnl3YXkgOi0pIC4KClRoZW4gaXQncyBp
bnRlcmVzdGluZyB0aGF0IHRoaXMgYm9hcmQgcmVxdWlyZXMgdGhlbSBpbiBvcmRlciB0byBhdm9p
ZCBhIApoYW5nIG9uIGJvb3QuIEknbGwgc2VlIGlmIHRoZXJlJ3MgYW55dGhpbmcgZWxzZSB0aGF0
IEkgY2FuIGZpbmQgb3V0LgoKSGFwcHkgRnJpZGF5LApTYW0KCj4gCj4gCj4gSGVpa28KPiAKPiAK
Pj4gTm90ZSB0aGF0IGl0IGlzIE9LIGZvciB0aGUgcGNpZTJ4MWwxIG5vZGUgdG8gcmVmZXIgdG8g
cGNpZTMweDFtMV9waW5zLiBUaGUKPj4gcGNpZTJ4MWwxIGRldmljZSBpcyAqaW4gZmFjdCogYSBQ
Q0llIDMuMCBjb250cm9sbGVyLCBhbmQgdGhlIHBjaWUzMHgxbTFfcGlucwo+PiBwaW5tdXggc2V0
dGluZyBpcyBzby1uYW1lZCB0byByZWZsZWN0IHRoaXMuIFRoZSBwY2llMngxbDEgbm9kZSBpcyBz
by1uYW1lZAo+PiBiZWNhdXNlIExpbnV4IGRvZXMgbm90IChjdXJyZW50bHkpIHN1cHBvcnQgcm91
dGluZyBpdCB0byBhIFBDSWUgMy4wIFBIWTsgc28gaW4KPj4gcHJhY3RpY2UgaXQgaXMgZWZmZWN0
aXZlbHkgYSBQQ0llIDIuMCBjb250cm9sbGVyLCBmb3IgdGhlIHRpbWUgYmVpbmcuCj4+Cj4+IENo
ZWVycyBhbmQgdGhhbmsgeW91IGZvciB5b3VyIHRpbWUsCj4+IFNhbQo+Pgo+PiAtLS0KPj4gICAu
Li4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXR1cmluZy1yazEuZHRzaSAgICAgfCAxNiArKy0t
LS0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTQgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC10dXJpbmctcmsxLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC10dXJpbmctcmsxLmR0c2kKPj4gaW5kZXggOTU3MGIzNGFjYTJlLi44NzU0NDZmZGI2N2Ug
MTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXR1cmlu
Zy1yazEuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10
dXJpbmctcmsxLmR0c2kKPj4gQEAgLTIxNCw4ICsyMTQsNyBAQCByZ21paV9waHk6IGV0aGVybmV0
LXBoeUAxIHsKPj4gICAmcGNpZTJ4MWwxIHsKPj4gICAJbGludXgscGNpLWRvbWFpbiA9IDwxPjsK
Pj4gICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gLQlwaW5jdHJsLTAgPSA8JnBjaWUy
X3Jlc2V0PjsKPj4gLQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEEyIEdQSU9fQUNUSVZFX0hJ
R0g+Owo+PiArCXBpbmN0cmwtMCA9IDwmcGNpZTMweDFtMV9waW5zPjsKPj4gICAJc3RhdHVzID0g
Im9rYXkiOwo+PiAgIH07Cj4+ICAgCj4+IEBAIC0yMjYsOCArMjI1LDcgQEAgJnBjaWUzMHBoeSB7
Cj4+ICAgJnBjaWUzeDQgewo+PiAgIAlsaW51eCxwY2ktZG9tYWluID0gPDA+Owo+PiAgIAlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAtCXBpbmN0cmwtMCA9IDwmcGNpZTNfcmVzZXQ+Owo+
PiAtCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQjYgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJ
cGluY3RybC0wID0gPCZwY2llMzB4NG0xX3BpbnM+Owo+PiAgIAl2cGNpZTN2My1zdXBwbHkgPSA8
JnZjYzN2M19wY2llMzA+Owo+PiAgIAlzdGF0dXMgPSAib2theSI7Cj4+ICAgfTsKPj4gQEAgLTI0
NSwxNyArMjQzLDcgQEAgaHltODU2M19pbnQ6IGh5bTg1NjMtaW50IHsKPj4gICAJCX07Cj4+ICAg
CX07Cj4+ICAgCj4+IC0JcGNpZTIgewo+PiAtCQlwY2llMl9yZXNldDogcGNpZTItcmVzZXQgewo+
PiAtCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BBMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9u
b25lPjsKPj4gLQkJfTsKPj4gLQl9Owo+PiAtCj4+ICAgCXBjaWUzIHsKPj4gLQkJcGNpZTNfcmVz
ZXQ6IHBjaWUzLXJlc2V0IHsKPj4gLQkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQjYgUktfRlVO
Q19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+IC0JCX07Cj4+IC0KPj4gICAJCXZjYzN2M19wY2ll
MzBfZW46IHBjaWUzLXJlZyB7Cj4+ICAgCQkJcm9ja2NoaXAscGlucyA9IDwyIFJLX1BDNSBSS19G
VU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4gICAJCX07Cj4+Cj4gCj4gCj4gCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
