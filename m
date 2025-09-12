Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C797CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 18:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lldgR6fHSM4+bN2lmrV73OviY4tJFbmo81VheCeD/bo=; b=OuoFw5NsDBnR3o
	+p8wqL0jtUjhyNcdkTKO8Cka4t3M4qrdInSFL7RCjElefv/9NUSK3ttlO7aqlS23AbLw/WzQVwoK8
	DTZJu/c4SsgBc8vfCWiteJuwLQdW5DXldPfmdDoISEn/c/3qspa/pNQ13uUYEKrxkZ2JwAaJy9mEs
	GXKmNQUGvPbgqiRoGS4Rc3LuDDJz46P+gvFpioiNsU8RsOp9gnrb435XGtRI0esk2hsnLvA6iaVz7
	oohnzmgFJBx2w73DEJwysPAQwiU0HynbLlYNCOV0gf8anCdqV1ZZuZH1aJYgFlr+CnqnC8d4jpwrx
	IxIWTWYmOIa6/SMGnGEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux8Zr-0000000B0lO-4BDO;
	Fri, 12 Sep 2025 18:32:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux8Zr-0000000B0kg-0fFO
	for linux-rockchip@bombadil.infradead.org;
	Fri, 12 Sep 2025 18:32:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MWAcV33ZMph2arQWUOu2bOKmt37CgEiSNgomNwsHgUE=; b=Tdo0hlZCNHNM6sQedBwwiuzjWa
	PwuhVDPyvFBJbP1yD/h/HvLogrAFrObjnzpdCKBAP3ym9i1YuKrbnXm0qnw1i++xJVH/yB1b+4TeP
	MGL/VY9Duh6ggozsBeusqW5JFfMf/CF014dvTjeZDJJDmWvRiUxRCnmnGjPsT8D+qTh7/ekSmlzPE
	Y5gdZ1i9Q9I9ouExmtSjJwcq76MGJOKyCCJqqH6U1NqkOs1+CYizOBWY0eC136btuqkSv5V/4JO6b
	1j+RrylwjNMHVXjrgQxhxIvxMJvL0thHClUVvitFLIk56YnEpGUDXpw8s3UfF3ay9bCOgKnD7ZYvf
	nZfq2TBw==;
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux8Zn-00000006P87-3kbE
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 18:32:53 +0000
Received: by mail-vs1-xe36.google.com with SMTP id ada2fe7eead31-53042807be7so1547487137.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757701967; x=1758306767; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MWAcV33ZMph2arQWUOu2bOKmt37CgEiSNgomNwsHgUE=;
        b=hWtcxhYe7lVZg5yr2kAEK0ldUN3jtt9iplP9suZljf1vFkhHbAKG3MiGv5XLu1kEVX
         +Fwfrbnb9nbQZy/gdJBO8xInW6L2kCJ31fHhsp9OwXrLbD7qbuPktC2i7mBoAtGHnznw
         11VYPx/Uq5kWA0LHWxEEfGUfORBeuVTOcDLb2Xz/wan6J78Hknx48LAMhHsgM/6UuL5Q
         sZj2mXyuB2MBXepaokdjKcgP0/hRaOhx5QZiVVFc/zotvRQsWW4KLUIuK0+mkE8Oly6i
         ZWCQoO/1s5U5ZwK1r6bZW0j8eiQ9ICcS/nIOM4mSPGZaKdlPLjghJQsuPqLDj/KtTjC6
         X6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757701967; x=1758306767;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MWAcV33ZMph2arQWUOu2bOKmt37CgEiSNgomNwsHgUE=;
        b=PV57bMb3lIWdmI5nOHubeYPFSNKrnNSIXmi4quFQabWf405i5aMEXjWXR2Xxu5ErjM
         /wLibUE5M5dR9yy9SSbZNo6cIHQS9d2m88vRwr+eJuGwYHFunzYhMC8c9rCettrcU2HU
         b06xtOhjDYu4xRHzQR7qj8p3Kz+6vCByEgbXqumcMdNmRyxMiWs/M9g+f+0IYNLaX8N8
         U1AM7EPVRmprEJJ8NIg2i5hQgbB+EQvgEWX1enPpzsk3eOvaoG6WnZHSNDSrKcjsv/E8
         MwiagMeKWcvzfwBMXorV2ePoqsjQ7kl1z7TEvKjjCbTKF2tlgkit//XqFISbCe8DJFo0
         yU/w==
X-Forwarded-Encrypted: i=1; AJvYcCUK02inM+GMWiA5BheDShZk6SrZEKT3BXWN81e7TgfmL/FC1TwdvgSaU7m2n/+sD1WQdT+3CvnX4g8ABoI/TQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YylLVyYIaHu9o+9L13q3H+g5K+B/dKlPn4ECrKlXJaNLy14LRar
	/4xjDVOQyfySCofY9OK3rArTpVBti2E9MblgYEctDFSH1yE14fZjrrekC152cTQ6ziPcgW6KIaq
	ksgZRqcs8bb5NgNxRnwH6tdtXMtEjxKvBN+oyGEhh
X-Gm-Gg: ASbGncu9qshqsa3osoF3jWKU+MuQhz3fozlWHwhXXjCs3rFAXm1tlN8bg1nYGdCHa3D
	Dn5/idK2SWnuCga8BrcswctyM2k2vX6kJflXZQ8qiS8raWD55eh3W9ZmjyDw9YELss7ja9Y3iBQ
	WxNzPe/pX5YL+tSV12MpPExc5qrJqYuw9zTiQD/3d/P37N56HzIRYfWvLq5quoA+G1ulocsloJD
	vzDs5H2lQ7Jk+pUlcoPPIw=
X-Google-Smtp-Source: AGHT+IEwuqGiSpqE4S73UrrBSfohWasHabBibycBkPxzV5dEA4Kg4RuWdEXXtxpvh+JdAFU3NQGylw9Qezmw4UR6T3M=
X-Received: by 2002:a05:6102:5092:b0:555:56e0:f357 with SMTP id
 ada2fe7eead31-556111a20c4mr2073158137.23.1757701967147; Fri, 12 Sep 2025
 11:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250909111130.132976-1-ulf.hansson@linaro.org>
 <DCPDDIZ3S1CM.3DJYY5U4T6V4U@cknow.org> <CAMuHMdVxjOLZsas4+nmAkZjbJsQjxdkZvZ8tTY9pq2zz3gvFNQ@mail.gmail.com>
 <DCPTTD0NKOE6.1HKQ87ESFOT6D@cknow.org>
In-Reply-To: <DCPTTD0NKOE6.1HKQ87ESFOT6D@cknow.org>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 12 Sep 2025 11:32:10 -0700
X-Gm-Features: AS18NWABs8fnzpFVCAtvwJwDtmgpdJSk1T67VpjW5fTH0mGJFK7ZtMdVqvXofIU
Message-ID: <CAGETcx-HnLZBZmP0CUhuYc8jtyAaP6Ax_h0oHubyaL9qw=dF3w@mail.gmail.com>
Subject: Re: [PATCH 0/5] pmdomain: Restore behaviour for disabling unused PM domains
To: Diederik de Haas <didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_193252_086457_5A665553 
X-CRM114-Status: GOOD (  33.08  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Thierry Reding <thierry.reding@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org, Geert Uytterhoeven <geert@linux-m68k.org>, Konrad Dybcio <konradybcio@kernel.org>, Peng Fan <peng.fan@oss.nxp.com>, linux-pm@vger.kernel.org, Johan Hovold <johan@kernel.org>, Sebin Francis <sebin.francis@ti.com>, Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org, Maulik Shah <maulik.shah@oss.qualcomm.com>, Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgMToyNuKAr0FNIERpZWRlcmlrIGRlIEhhYXMgPGRpZGku
ZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4KPiBIaSBHZWVydCwKPgo+IE9uIFRodSBTZXAgMTEs
IDIwMjUgYXQgOToxOCBBTSBDRVNULCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBX
ZWQsIDEwIFNlcHQgMjAyNSBhdCAyMTozMywgRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5kZWJpYW5A
Y2tub3cub3JnPiB3cm90ZToKPiA+PiBPbiBUdWUgU2VwIDksIDIwMjUgYXQgMToxMSBQTSBDRVNU
LCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+PiA+IFJlY2VudCBjaGFuZ2VzIHRvIGdlbnBkIHByZXZl
bnRzIHRob3NlIFBNIGRvbWFpbnMgYmVpbmcgcG93ZXJlZC1vbiBkdXJpbmcKPiA+PiA+IGluaXRp
YWxpemF0aW9uIGZyb20gYmVpbmcgcG93ZXJlZC1vZmYgZHVyaW5nIHRoZSBib290IHNlcXVlbmNl
LiBCYXNlZCB1cG9uCj4gPj4gPiB3aGV0aGVyIENPTkZJR19QTV9DT05GSUdfUE1fR0VORVJJQ19E
T01BSU5TX09GIGlzIHNldCBvZiBub3QsIGdlbnBkIHJlbGllcwo+ID4+ID4gb24gdGhlIHN5bmNf
c3RhdGUgbWVjaGFuaXNtIG9yIHRoZSBnZW5wZF9wb3dlcl9vZmZfdW51c2VkKCkgKHdoaWNoIGlz
IGEKPiA+PiA+IGxhdGVfaW5pdGNhbGxfc3luYyksIHRvIHVuZGVyc3RhbmQgd2hlbiBpdCdzIG9r
YXkgdG8gYWxsb3cgdGhlc2UgUE0gZG9tYWlucwo+ID4+ID4gdG8gYmUgcG93ZXJlZC1vZmYuCj4g
Pj4gPgo+ID4+ID4gVGhpcyBuZXcgYmVoYXZpb3VyIGluIGdlbnBkIGhhcyBsZWFkIHRvIHByb2Js
ZW1zIG9uIGRpZmZlcmVudCBwbGF0Zm9ybXMgWzFdLgo+ID4+ID4KPiA+PiA+IEluIHRoaXMgc2Vy
aWVzLCBJIGFtIHRoZXJlZm9yZSBzdWdnZXN0aW5nIHRvIHJlc3RvcmUgdGhlIGJlaGF2aW9yIG9m
Cj4gPj4gPiBnZW5wZF9wb3dlcl9vZmZfdW51c2VkKCkgYWxvbmcgd2l0aCBpbnRyb2R1Y2luZyBh
IG5ldyBnZW5wZCBjb25maWcgZmxhZywKPiA+PiA+IEdFTlBEX0ZMQUdfTk9fU1RBWV9PTiwgdG8g
YWxsb3cgZ2VucGQgT0YgcHJvdmlkZXJzIHRvIG9wdC1vdXQgZnJvbSB0aGUgbmV3Cj4gPj4gPiBi
ZWhhdmlvdXIuCj4gPj4KPiA+PiBJcyBpdCBleHBlY3RlZCB0aGF0IEknbSBzdGlsbCBzZWVpbmcg
dGhpcyBvbiBhIFJvY2s2NCAocmszMzI4KSwganVzdAo+ID4+IGxpa2UgYmVmb3JlIFsxXT8KPiA+
Pgo+ID4+ICAgWyAgIDE3LjEyNDIwMl0gcm9ja2NoaXAtcG0tZG9tYWluIGZmMTAwMDAwLnN5c2Nv
bjpwb3dlci1jb250cm9sbGVyOiBzeW5jX3N0YXRlKCkgcGVuZGluZyBkdWUgdG8gZmYzMDAwMDAu
Z3B1Cj4gPj4gICBbICAgMTcuMTI5Nzk5XSByb2NrY2hpcC1wbS1kb21haW4gZmYxMDAwMDAuc3lz
Y29uOnBvd2VyLWNvbnRyb2xsZXI6IHN5bmNfc3RhdGUoKSBwZW5kaW5nIGR1ZSB0byBmZjM1MDAw
MC52aWRlby1jb2RlYwo+ID4+ICAgWyAgIDE3LjE0MDAwM10gcm9ja2NoaXAtcG0tZG9tYWluIGZm
MTAwMDAwLnN5c2Nvbjpwb3dlci1jb250cm9sbGVyOiBzeW5jX3N0YXRlKCkgcGVuZGluZyBkdWUg
dG8gZmYzNjAwMDAudmlkZW8tY29kZWMKPiA+Cj4gPiBZZXMsIGFzIHRoZSBzeW5jIHN0YXRlIGlz
IHN0aWxsIGJsb2NrZWQgb24gdGhlbS4KPiA+IERpc2FibGluZyB1bnVzZWQgUE0gRG9tYWlucyBp
cyBkb25lIGluZGVwZW5kZW50bHkgb2Ygc3luYyBzdGF0ZS4KPiA+Cj4gPj4gVGhpcyBpcyB3aXRo
IGEgNi4xNy1yYzUga2VybmVsIHdpdGggdGhpcyBwYXRjaCBzZXQgYXBwbGllZC4KPiA+PiBBbmQg
aXQgYWxzbyBoYXMgdGhpcyBwYXRjaCBmcm9tIENocmlzdGlhbiBIZXdpdHQgYWRkZWQsIG5vdyBp
biB2MzoKPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MDkw
NjEyMDgxMC4xODMzMDE2LTEtY2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20vCj4gPj4KPiA+PiBX
aGVuIEkgYm9vdCBpbnRvIGEgNi4xNy1yYzUga2VybmVsIHdpdGhvdXQgYW55IHBhdGNoZXMgYXBw
bGllZCwgSSBkbyBnZXQKPiA+PiB0aGUgMiBmb3IgZmYzNTAwMDAudmlkZW8tY29kZWMgYW5kIGZm
MzYwMDAwLnZpZGVvLWNvZGVjLCBidXQgbm90IHRoZQo+ID4+IGZmMzAwMDAwLmdwdSBvbmUuCj4g
Pj4KPiA+PiBJbnRlcmVzdGluZ2x5Ogo+ID4+IGZmMzAwMDAwLmdwdSAtPiBwb3dlci1kb21haW5z
ID0gPCZwb3dlciBSSzMzMjhfUERfR1BVPjsKPiA+PiBmZjM1MDAwMC52aWRlby1jb2RlYyAtPiBw
b3dlci1kb21haW5zID0gPCZwb3dlciBSSzMzMjhfUERfVlBVPjsKPiA+PiBmZjM2MDAwMC52aWRl
by1jb2RlYyAtPiBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzMzMjhfUERfVklERU8+Owo+ID4+
Cj4gPj4gSSB3b3VsZCBiZSBzdXJwcmlzZWQgaWYgdGhhdCB3YXMgYSBjb2luY2lkZW5jZS4KPiA+
Cj4gPiBGd19kZXZsaW5rcyBpZ25vcmVzIHRoZSBpbmRleCBjZWxsIChSSzMzMjhfUERfKiksIGhl
bmNlIGFsbCBsaW5rcyBhcmUKPiA+IGNyZWF0ZWQgcG9pbnRpbmcgdG8gdGhlIHBtZG9tYWluIGNv
bnRyb2xsZXIgKGluIGNhc2UgaXQgaGFzIGEgcGxhdGZvcm0KPiA+IGRyaXZlcikgb3IgdGhlIGZp
cnN0IHBtZG9tYWluIChpbiBjYXNlIGl0IGhhcyBub3QpLiB0aHVzIGJsb2NraW5nIHRoZQo+ID4g
c3luYyBzdGF0ZSBjYWxsIGFuZCBwb3dlci1kb3duIGZvciBfYWxsXyBwbWRvbWFpbnMgbWFuYWdl
ZCBieSB0aGUKPiA+IGNvbnRyb2xsZXIuCj4KPiBJIGRvbid0IHRoaW5rIEkgZnVsbHkgdW5kZXJz
dGFuZCB0aGlzIChub3QgeW91ciBwcm9ibGVtIGR1ZSB0byBsYWNrIG9mCj4ga25vd2xlZGdlIG9u
IG15IHBhcnQpLCBidXQgeW91IG1lbnRpb25pbmcgJ2Z3X2RldmxpbmsnIHJhbmcgYSBiZWxsLgo+
Cj4gU29tZSB0aW1lIGFnbyBOaWNvbGFzIEZyYXR0YXJvbGkgYW5kIEkgd29ya2VkIG9uIGFuIGlt
YWdlIGZvciBQSU5FNjQncwo+ICpRdWFydHoqIGRldmljZXMgYW5kIHRoYXQgYWRkZWQgYGBmd19k
ZXZsaW5rPW9mZmBgIHRvIGNtZGxpbmUuCj4gSSd2ZSBiZWVuIHVzaW5nIGl0IG9uIGFsbCBteSBS
b2NrY2hpcCBiYXNlZCBkZXZpY2VzLCB3aXRob3V0Cj4gdW5kZXJzdGFuZGluZyB0aGF0IHBhcmFt
ZXRlciAuLi4gYnV0IChhcHBhcmVudGx5KSBvbiBteSAncm9jazY0LXRlc3QnCj4gZGV2aWNlLCB3
aGVyZSBJIHRlc3RlZCBpdCB3aXRoLCBJIGhhZCByZW1vdmVkIHRoYXQgcGFyYW1ldGVyLgo+IFB1
dHRpbmcgdGhhdCBwYXJhbWV0ZXIgYmFjayAuLi4gYW5kIHRob3NlIHdhcm5pbmdzIGFyZSBnb25l
IQo+Cj4gVGhhbmtzIGEgTE9UIGZvciB0aGF0IGhpbnQhCgpQbGVhc2UgZG9uJ3QganVzdCBkaXNh
YmxlIGZ3X2RldmxpbmsgdXNpbmcgZndfZGV2bGluaz1vZmYuIFdlIHdhbnQgdG8KZml4IGFueSBp
c3N1ZXMgeW91IGFyZSBoaXR0aW5nIHdpdGggaXQuIEkgbWlnaHQgZXZlbiBkZWxldGUgdGhpcyAi
b2ZmIgpvcHRpb24gc29tZXRpbWUuIEl0IHdhcyBtZWFudCBhcyBhbiBlYXJseSBkZWJ1ZyBvcHRp
b24uCgpUaGFua3MsClNhcmF2YW5hCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
