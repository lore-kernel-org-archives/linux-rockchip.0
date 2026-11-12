Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE583606B58C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CN4Q9odE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VeMnwYi3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BttOLsAFDu5WwRaU3m6TE1kpPpchAQBkbyqQOTKiaQw=; b=CN4Q9odEAtRd0MPiN+TRh8Dvdg
	NW6FALmjE9YzXe/EZtjW6VdbxXhTMwcAR9wPQZcMcvJ8yTZBkgtSXHrUCYJNnVU3nVdGvbGsLt9c1
	qc98Su9gS/fJQ7drrpLyDA/6mlsLW5I+OJZ/s6F/ipMJl6V+bZkeEmDPCMVlTVoQeEPxU/y4w+lhm
	FPGtkX4WMs+jbSCLxpt88Ev7rhdxspKPLzR78qxAztj+7oX5OmEBEe9iplbGQ/eS2gKd5VkpwwAZi
	woGjanSW/jPeUhZSvEZmNNwcrFBJpq45OJ4h6TNcl2mThvlpxQ2PzUWyUWqx86YYuHFjbT5hE4J9T
	r4e3yVyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQOg-00000009CsD-3s9A;
	Thu, 12 Nov 2026 08:43:07 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQL4-00000009BK6-2RNv
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 08:39:44 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5be4716d76fso163331e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 00:39:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794472760; cv=none;
        d=google.com; s=arc-20260327;
        b=svlbDvl1x9A/6kEAD4YLcHvkiltdDTsX0Yo+/XhaEgfK2wPVW2+UFS9+AHLH2eUoQq
         iUaHb47pGIDG3ohA0DIRnJSRV2/63eBaC8/xr3XiQJzeLcGES2LjKrxWjQ0MWO/Zflpn
         +v5WIkda+EWMKNqqcuTJNyW/HtwgUvMT/LWA5+e/Z3QtPUPekSsFCc8+bBDXpuIGvW3J
         aVGC52ixQa2Cr1NNBjIbyZHIEHdFrEdUJuB8CDN1h6/6ufY0Tjr+n+bVQec9XNxYNOo+
         fyZKOGSzCk+Xzk4iq02VNRjBMIsr7LW2lT2A6AMKZJkQU13iTUtIY4vSOIUSrhYu34mc
         nh9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ig8TOwEwu93oj/vlPs1jDWfcC/HjbbLnhomiuGEjcu0=;
        fh=6tPk2giyjdTDHpktr11Nu//itDcELulCX5SFzqFHx50=;
        b=rOtwFGnuWg+UQSiDNdwOUROjvzVEXLATIGN2XG/fdkdsKUhTph8ycFFxCbjfJB910l
         ifzbMZVYI1OF62/XPRVonciGAZA3xvw0iRyCLT8SekCKznjFgOGFw36tL3q+ZNAQqjgn
         m9XIEJZSjTqjmg27MX0D3P0fMbUsBkjv5IJGZPwU4MBzPdg39FLhwTHQLV0L4hmsmxMc
         S9P7VqGk4o65xBEg6bvfKcLCo1JJLObJ64bDN+H8PGl1+X3ookvXkk2itbxFBVaZ3Vkl
         GL4b4nyyOyyL+qS/Yn4f5XlN5WcaKqDzTgvPHhqmQTUNDzcUYTblln5+f6MDwZNA0IA0
         hXow==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794472760; x=1795077560; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ig8TOwEwu93oj/vlPs1jDWfcC/HjbbLnhomiuGEjcu0=;
        b=VeMnwYi38fFtKuUe0bVv9fEoYygDo6yaLkGc9Kbg0g6DnFixnAiV8ZJcZpYOAptC0O
         4MXNqIUct9GKvzbI4HQHxc9xRyBIf5azaZwgKyQ2sDX6MjaT6aOoBNoXdmM30rCP5fT+
         Uf3jhIVXhgJu80BOduiEr0v3hZ8BwZA9+jG6L7AVPgva9ucf8YxdrNju9vrRNefmV94w
         u85TAEageYJgsz7/OJjJwi1M175GLFfjxbnHu0VrINziSZJWz4P4pXfUEfGI5NAvr6VG
         +aMzVeqJL5yDM2PhLe5BxSItmKv01G+PVle4ZUq3ClQzHULmJktgGVxCm05Mq7WPAiJM
         IBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794472760; x=1795077560;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ig8TOwEwu93oj/vlPs1jDWfcC/HjbbLnhomiuGEjcu0=;
        b=Oy34SiUTYc3A2OqJHXPYMfA2W4/jD5Ai6JRDsKMqYNr+dJ4hE5J5LdiKE3FTSGapQB
         S5iTRdZvSc28UY2Nik/VsgdCQfTzPckHV39Lu2AP2ucW+L74VEYeHeGKH8DmTrbKoue3
         3W6t2NmwZ+etsveQBEZ2hpn44jPhojE88lphG+L1g54+2IfXzR6dxCrbEhiWXHeBrsTq
         9qb03wp0rJPrb+PNGiBtJBUjwmvhraXN8o+ZujLqkSftRM/CjPWu8wQVcsxVqPRMcHQy
         pN8zBqhrMJy/LJl9ZNjveEIIS/3uzdbID18h8oX2UmiaPnrwmsIOrD9SEP+HUCedzyPh
         scBQ==
X-Forwarded-Encrypted: i=1; AL+hErE062YD0d3xTU20HY3n+Hs1xr986wEH9hd8jVESYyTNdtj8dQQO6TQfoL2YdwL1an2giZlhCg1uKPCLCdHTbQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8yvUOnu7Tqg3Z44K0P9Ov7YNSz9j+bRRi3bSJBD0Uh04e5PI+6
	+u+QyP4KzmJIJuqHWaYumuFqvOvJ7H45WBf+rBBvxc1NkVujveVJaO8mVgwbpB4qoE6GALXdHUK
	5AW/GQV8iQcZUNgIXZVGxvTReNkOWDIM=
X-Gm-Gg: AYBFou0c5eJWEpu5VEC9v6GOdjOnIZPyTeyVZJ3P7fGS7J1tZgXcDW9y/GoviCyI7hh
	kDLQEAC4FyUwfNJbm52iohwp9Rc5wnMW6MlyyJowiIHL9vnGJBV6xy65NyHfXFvpSjHl1Q814XO
	UkpDZlNO/lMqmezGC8nFThcaJjqkhqbBZYhusguI8ZB2ysmrTeUG211KtNfCjtwqG5LKz8Bg0Gx
	UR3z+f1hhMmo1O/mm3cXbvIzdG3ATIfmnTfSiiGJCId/O4aRxaoJbwXnJFg+jOhx1BihaERw/Y/
	Uyut6YCzwV3vEGhGTiKCVVh2RwLP45iz25T6mAW7hAPqojAYEK6ZMw1TKKptEKMfFuzpFgXMgUy
	WJD9qnU96huG3732HIeU79AFb3y6C/oz9dgShCHvNjhnArYP6zl9RSapEN7fWrYtQEdfzwIc=
X-Received: by 2002:ac2:51c8:0:b0:5c1:57ce:d4b4 with SMTP id
 2adb3069b0e04-5c15d5f7848mr1986848e87.2.1794472760172; Thu, 12 Nov 2026
 00:39:20 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-dwc3-s2idle-optin-v1-0-842e3f8413d0@gmail.com>
In-Reply-To: <20261112-dwc3-s2idle-optin-v1-0-842e3f8413d0@gmail.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 12 Nov 2026 00:39:08 -0800
X-Gm-Features: AclHuK-LsUOtbUqqsSLc1VRlkuatKOgx5pOiztBW2KXQJW8AeA8OYEhVHHOWdbc
Message-ID: <CAEy9hNXag+0ssyuc9U9vSLqUS3jv=xKAaPkegR3W3Lyqma=1TA@mail.gmail.com>
Subject: Re: [PATCH RFC 0/2] usb: dwc3: Let the Rockchip glue keep the host
 bus across suspend-to-idle
To: aiyengar1990@gmail.com
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Joonhoe Kim <26rote@gmail.com>, 
	Vladyslav Tymoshchuk <tvlad744@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_003924_542066_E4F7BDAF 
X-CRM114-Status: GOOD (  35.84  )
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

UGxlYXNlIGRyb3AgdGhpcyBzZXJpZXMuCgpJbiBob3N0IG1vZGUsIHBhdGNoIDEgZHVwbGljYXRl
cyBKb29uaG9lIEtpbSdzIGVhcmxpZXIgInVzYjogZHdjMzoKdGVsbCB4SENJIHRoYXQgaXQgbG9z
dCBpdHMgc3RhdGUgd2hlbiB0aGUgY29yZSBpcyBwb3dlcmVkIG9mZiIgWzFdLAp3aGljaCBJIG9u
bHkgZm91bmQgYWZ0ZXIgc2VuZGluZy4gSSBoYXZlIHRlc3RlZCBpdCBvbiBhbiBPcmFuZ2UgUGkg
NQooUkszNTg4UyksIHdpdGggdGhlIGNvcmUgdGVhcmRvd24gZm9yY2VkIHNvIHRoYXQgaXQgdGFr
ZXMgdGhlIHNhbWUKcGF0aCBhcyB0aGF0IHBhdGNoIGFsb25lOiAxMCBvZiAxMCBzdXNwZW5kLXRv
LWlkbGUgY3ljbGVzIHdpdGggdGhlCmNvcmUgcG93ZXJlZCBvZmYgcmVjb3ZlciB3aXRob3V0ICJ4
SEMgZXJyb3IgaW4gcmVzdW1lIi4gUGxlYXNlIHRha2UKaXQgaW5zdGVhZC4KClBhdGNoIDIgaXMg
bm90IHNhZmUgYXMgYSBkZWZhdWx0IGZvciBldmVyeSBkd2MzIGhvc3QgKFNhc2hpa28ncyByZXZp
ZXcKb2YgaXQgaG9sZHMpLiBJIGhhdmUgcmV3b3JrZWQgaXQgYXMgYW4gb3B0LWluIHRoYXQgYSBn
bHVlIGRyaXZlciBzZXRzLAp1c2VkIGJ5IHRoZSBSb2NrY2hpcCBnbHVlIGZvciBSSzM1ODggb25s
eSwgYW5kIHBvc3RlZCBpdCBhcyBhbiBSRkMgb24KdG9wIG9mIFNlYmFzdGlhbiBSZWljaGVsJ3Mg
Um9ja2NoaXAgZ2x1ZSBzZXJpZXMgYW5kIEpvb25ob2UncyBwYXRjaDoKaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI2MTExMi1kd2MzLXMyaWRsZS1vcHRpbi12MS0wLTg0MmUzZjg0MTNkMEBn
bWFpbC5jb20KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwOTI5MTMwMjUyLjg2
OS0xLTI2cm90ZUBnbWFpbC5jb20KCkFydW4KCk9uIFRodSwgTm92IDEyLCAyMDI2IGF0IDEyOjM1
4oCvQU0gQXJ1biBJeWVuZ2FyIHZpYSBCNCBSZWxheQo8ZGV2bnVsbCthaXllbmdhcjE5OTAuZ21h
aWwuY29tQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSW4gaG9zdCBtb2RlLCBkd2MzIHRlYXJzIHRo
ZSBjb3JlIGRvd24gZm9yIHN5c3RlbSBzdXNwZW5kIHVubGVzcyB0aGUKPiBjb250cm9sbGVyIGlz
IGEgd2FrZXVwIHNvdXJjZS4gT24gUkszNTg4IHRoYXQgZW5kcyB0aGUgcG93ZXIgc2Vzc2lvbiBv
Zgo+IGV2ZXJ5IHN1c3BlbmRlZCBVU0IgZGV2aWNlIGluIHN1c3BlbmQtdG8taWRsZTogb24gYW4g
T3JhbmdlIFBpIDUgYQo+IFNhbkRpc2sgRXh0cmVtZSBkcml2ZSBvbiB0aGUgVHlwZS1BIFVTQjMg
cG9ydCBhbmQgYSBjYXJkIHJlYWRlciBiZWhpbmQgYQo+IFVTQjMgaHViIGFyZSBkaXNjb25uZWN0
ZWQgYW5kIGVudW1lcmF0ZWQgYWdhaW4gYWZ0ZXIgZXZlcnkgcmVzdW1lLCB3aGljaAo+IGtpbGxz
IGEgZmlsZXN5c3RlbSBtb3VudGVkIG9uIHRoZW0uIFdpdGggdGhlIGJ1cyBrZXB0IHN1c3BlbmRl
ZCB0aGV5Cj4gcmVzdW1lIGZyb20gVTMgaW4gbWlsbGlzZWNvbmRzLgo+Cj4gUGF0Y2ggMiBvZiB2
MSBbMV0ga2VwdCB0aGUgaG9zdCBjb3JlIGluIHN1c3BlbmQtdG8taWRsZSBmb3IgZXZlcnkgZHdj
Mwo+IGhvc3QuIFNhc2hpa28gZm91bmQgdGhyZWUgd2F5cyBpbiB3aGljaCB0aGF0IGJyZWFrcyBv
dGhlciBwbGF0Zm9ybXMsIGFuZAo+IGFsbCB0aHJlZSBob2xkIG9uIHVzYi1uZXh0Ogo+IC0gbGVn
YWN5IGdsdWUgZHJpdmVycyBzdGlsbCBhY3QgaW4gdGhlaXIgb3duIHN1c3BlbmQgY2FsbGJhY2tz
IGluCj4gICBzdXNwZW5kLXRvLWlkbGUgKGR3YzMtb2Ytc2ltcGxlIGFzc2VydHMgaXRzIHJlc2V0
cyBvbiByazMzOTksCj4gICBkd2MzLW1lc29uLWcxMmEgcG93ZXJzIHRoZSBQSFlzIG9mZiwgZHdj
My1leHlub3Mgc3dpdGNoZXMgaXRzIHN1cHBsaWVzCj4gICBvZmYpLCBzbyB0aGUgY29yZSB3b3Vs
ZCBza2lwIHRoZSByZS1pbml0IG9uIGEgcmVzZXQgY29udHJvbGxlcjsKPiAtIGR3YzMtZ29vZ2xl
IGFzc2VydHMgaXRzIHJlc2V0cyB1bmxlc3Mgd2FrZXVwIGlzIGVuYWJsZWQ7Cj4gLSBnZW5wZCBr
ZWVwcyBhIGRvbWFpbiBvbiBmb3IgYSBkZXZpY2Ugb24gdGhlIGF3YWtlIHBhdGggb25seSB3aXRo
Cj4gICBHRU5QRF9GTEFHX0FDVElWRV9XQUtFVVAsIHdoaWNoIGUuZy4gUkszNTY4IFBEX1BJUEUg
ZG9lcyBub3Qgc2V0Lgo+ICAgVmxhZHlzbGF2IFR5bW9zaGNodWsgaGFzIHNpbmNlIHNlZW4gdGhp
cyBvbmUgb24gaGFyZHdhcmUgWzJdOiBvbgo+ICAgU004NzUwIHRoZSBVU0IgR0RTQ3MgbGFjayB0
aGUgZmxhZywgZ2VucGQgcG93ZXJzIHRoZW0gb2ZmIGluCj4gICBzdXNwZW5kLXRvLWlkbGUgYW5k
IHRoZSB4SENJIGRpZXMgb24gcmVzdW1lLCBhbHJlYWR5IG9uIHRoZSBleGlzdGluZwo+ICAgd2Fr
ZXVwIHBhdGguCj4gQ29tbWl0IGM0YTUxNTNlODdmZCAoInVzYjogZHdjMzogY29yZTogUG93ZXIt
b2ZmIGNvcmUvUEhZcyBvbgo+IHN5c3RlbV9zdXNwZW5kIGluIGhvc3QgbW9kZSIpIGFsc28gbWFk
ZSB0aGUgdGVhcmRvd24gZGVsaWJlcmF0ZSwgc28KPiB0aGF0IHRoZSBQSFlzIGNhbiBiZSBwb3dl
cmVkIG9mZi4gVGhhbmtzIHRvIFNhc2hpa28gZm9yIHRoZSByZXZpZXcgYW5kCj4gdG8gVmxhZHlz
bGF2IGZvciB0aGUgdGVzdCBvbiBTTTg3NTAuCj4KPiBUaGlzIHZlcnNpb24gbWFrZXMgaXQgYW4g
b3B0LWluIGluc3RlYWQ6IHBhdGNoIDEgYWRkcwo+IGtlZXBfaG9zdF9idXNfaW5fczJpZGxlIHRv
IGR3YzNfcHJvcGVydGllcyBmb3IgdGhlIGdsdWUgdG8gc2V0LCBhbmQKPiBwYXRjaCAyIHNldHMg
aXQgaW4gdGhlIFJvY2tjaGlwIGdsdWUgZm9yIFJLMzU4OCBvbmx5LCB3aG9zZSBQRF9VU0IgaGFz
Cj4gR0VOUERfRkxBR19BQ1RJVkVfV0FLRVVQLiBOb3RoaW5nIGNoYW5nZXMgZm9yIGFueSBvdGhl
ciBwbGF0Zm9ybSwgbm9yCj4gZm9yIHN1c3BlbmQtdG8tUkFNIGFuZCBoaWJlcm5hdGlvbi4KPgo+
IEl0IGlzIGFuIFJGQyBiZWNhdXNlIGl0IGRlcGVuZHMgb24gdHdvIHBvc3RpbmdzIHRoYXQgYXJl
IG5vdCBtZXJnZWQ6Cj4gLSBTZWJhc3RpYW4gUmVpY2hlbCdzIFJvY2tjaGlwIGR3YzMgZ2x1ZSBk
cml2ZXIsIHYxOCBbM107IHBhdGNoIDIgaXMgb24KPiAgIHRvcCBvZiBpdC4KPiAtIEpvb25ob2Ug
S2ltJ3MgInVzYjogZHdjMzogdGVsbCB4SENJIHRoYXQgaXQgbG9zdCBpdHMgc3RhdGUgd2hlbiB0
aGUKPiAgIGNvcmUgaXMgcG93ZXJlZCBvZmYiIFs0XTsgcGF0Y2ggMSB1c2VzIGl0cyB4aGNpX3Bv
d2VyX2xvc3QgZmxhZyB0bwo+ICAgcmUtaW5pdGlhbGlzZSB0aGUgY29yZSBvbiByZXN1bWUgZXhh
Y3RseSB3aGVuIHN1c3BlbmQgdG9yZSBpdCBkb3duLgo+ICAgSW4gaG9zdCBtb2RlIGl0IGRvZXMg
dGhlIHNhbWUgYXMgcGF0Y2ggMSBvZiB2MSBbMV0sIHdoaWNoIEkgd2l0aGRyZXcKPiAgIGluIGl0
cyBmYXZvdXIuCj4gVGhlIGJhc2UgaXMgdXNiLW5leHQgKHY3LjQtcmMxKSB3aXRoIFszXSBhbmQg
WzRdIGFwcGxpZWQuCj4KPiBUZXN0ZWQgb24gYW4gT3JhbmdlIFBpIDUgKFJLMzU4OFMsIG5vIHdh
a2V1cCBzb3VyY2UpIHdpdGggdGhlIGNvZGUgb2YKPiB0aGlzIHNlcmllcyBvbiB0b3Agb2YgWzNd
IGFuZCBbNF0gaW4gYSB2Ny4zLWJhc2VkIGtlcm5lbCwgNTAKPiBzdXNwZW5kLXRvLWlkbGUgY3lj
bGVzIHRocm91Z2ggcnRjd2FrZS4gQm90aCBkd2MzIGNvbnRyb2xsZXJzIG9mIHRoZQo+IGJvYXJk
IHJ1biBvbiB0aGUgUm9ja2NoaXAgZ2x1ZTogVVNCM09URzIgKG5vIHBvd2VyIGRvbWFpbikgd2l0
aCBhCj4gU2FuRGlzayBFeHRyZW1lIGRyaXZlIG9uIHRoZSBUeXBlLUEgcG9ydCwgYW5kIFVTQjNP
VEcwIChpbiBQRF9VU0IpIHdpdGgKPiB0aGUgVVNCIDIuMCBiaWxsYm9hcmQgZGV2aWNlIGJlaGlu
ZCB0aGUgVHlwZS1DIHBvcnQuCj4gLSBCdXMga2VwdCAodGhpcyBzZXJpZXMpLCA0MCBvZiA0MCBj
eWNsZXM6IHRoZSBzYW1lIFVTQiBidXMgYW5kIGRldmljZQo+ICAgbnVtYmVycyBiZWZvcmUgYW5k
IGFmdGVyIHJlc3VtZTsgbm8gInJvb3QgaHViIGxvc3QgcG93ZXIiLCBubyAieEhDCj4gICBlcnJv
ciBpbiByZXN1bWUiLCBubyBkaXNjb25uZWN0LCByZS1lbnVtZXJhdGlvbiBvciAicmVzZXQKPiAg
IFN1cGVyU3BlZWQiLCBubyBXQVJOSU5HL0JVRy9Pb3BzOyB0aGUgZHJpdmUgd2FzIHJlYWRhYmxl
IGFmdGVyIGV2ZXJ5Cj4gICByZXN1bWUgKDY0IE1pQiBkaXJlY3QgcmVhZCkuCj4gLSBDb3JlIHRv
cm4gZG93biBhcyB3aXRob3V0IHRoZSBvcHQtaW4gKGZvcmNlZCB3aXRoIGEgdGVzdC1vbmx5IG1v
ZHVsZQo+ICAgcGFyYW1ldGVyIHRoYXQgaXMgbm90IHBhcnQgb2YgdGhpcyBzZXJpZXMpLCAxMCBv
ZiAxMCBjeWNsZXM6IGFsbAo+ICAgcm9vdCBodWJzIHJlcG9ydGVkICJyb290IGh1YiBsb3N0IHBv
d2VyIG9yIHdhcyByZXNldCIgKDgwIGxpbmVzKSwgbm8KPiAgICJ4SEMgZXJyb3IgaW4gcmVzdW1l
IiB0aGFua3MgdG8gWzRdLCBubyBXQVJOSU5HL0JVRy9Pb3BzOyB0aGUgZHJpdmUKPiAgIHdhcyBk
aXNjb25uZWN0ZWQgYW5kIGVudW1lcmF0ZWQgYWdhaW4gb24gZXZlcnkgcmVzdW1lLCB3aGljaCBp
cyB3aGF0Cj4gICB0aGlzIHNlcmllcyBhdm9pZHMuCj4gTm90IHRlc3RlZDogUkszNTc2IChsZWZ0
IHVuY2hhbmdlZCksIFVTQjNPVEcxIChub3Qgb24gdGhlIFJLMzU4OFMpLAo+IHN1c3BlbmQtdG8t
UkFNIChub3QgcnVuIHdpdGggdGhpcyBzZXJpZXM7IHRoZSBvcHQtaW4gZG9lcyBub3QgYXBwbHkK
PiB0aGVyZSkuCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MTExMC1kd2Mz
LXMyaWRsZS12MS0wLTJlZjRjYzNmODEzMEBnbWFpbC5jb20KPiBbMl0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI2MTExMTEyMTU1Ni4xODcxLTEtdHZsYWQ3NDRAZ21haWwuY29tCj4gWzNd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjEwMjEtYjQtcm9ja2NoaXAtZHdjMy1yb2Nr
Y2hpcC1nbHVlLXYxOC0wLTYwMDAwZDAzZmNhMkBjb2xsYWJvcmEuY29tCj4gWzRdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNjA5MjkxMzAyNTIuODY5LTEtMjZyb3RlQGdtYWlsLmNvbQo+
Cj4gVGhpcyBzZXJpZXMgd2FzIGRldmVsb3BlZCB3aXRoIENsYXVkZSAoQW50aHJvcGljKSBhcyBh
IGNvZGluZyBhc3Npc3RhbnQ6Cj4gaXQgd3JvdGUgdGhlIGNvZGUgYW5kIHRoZSBjb21taXQgbWVz
c2FnZXMsIGFuZCBJIHJldmlld2VkIGFuZCB0ZXN0ZWQgaXQKPiBhcyBkZXNjcmliZWQgYWJvdmUu
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+
Cj4gLS0tCj4gQXJ1biBJeWVuZ2FyICgyKToKPiAgICAgICB1c2I6IGR3YzM6IExldCB0aGUgZ2x1
ZSBrZWVwIHRoZSBob3N0IGJ1cyBzdXNwZW5kZWQgYWNyb3NzIHN1c3BlbmQtdG8taWRsZQo+ICAg
ICAgIHVzYjogZHdjMzogcm9ja2NoaXA6IEtlZXAgdGhlIGhvc3QgYnVzIGFjcm9zcyBzdXNwZW5k
LXRvLWlkbGUgb24gUkszNTg4Cj4KPiAgZHJpdmVycy91c2IvZHdjMy9jb3JlLmMgICAgICAgICAg
fCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCj4gIGRyaXZlcnMv
dXNiL2R3YzMvY29yZS5oICAgICAgICAgIHwgIDMgKysrCj4gIGRyaXZlcnMvdXNiL2R3YzMvZHdj
My1yb2NrY2hpcC5jIHwgMTAgKysrKysrKysrKwo+ICBkcml2ZXJzL3VzYi9kd2MzL2dsdWUuaCAg
ICAgICAgICB8ICA3ICsrKysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiA2NjI4ZTdkNGM2YjI1YzhkMThm
MTM0NWUzYTIwZDIxODI5YWFlN2U0Cj4gY2hhbmdlLWlkOiAyMDI2MTExMC1kd2MzLXMyaWRsZS1v
cHRpbi0xZTMwMjFhZGI2NTAKPiBwcmVyZXF1aXNpdGUtbWVzc2FnZS1pZDogPDIwMjYxMDIxLWI0
LXJvY2tjaGlwLWR3YzMtcm9ja2NoaXAtZ2x1ZS12MTgtMC02MDAwMGQwM2ZjYTJAY29sbGFib3Jh
LmNvbT4KPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDRmYTNhYWU4Y2NmYTUzODM1MjIwNzAxNzlj
ODc3NzMwMjQxMTA4MmMKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGRiMDliNGY1YjBjZmZjMWQ1
YmYwOThmYmRlYmIwNmI4YmU0NDhmYjcKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGMyZTFjNDUz
NDU0YTc1ODlhNjkxZmUzOTFkYzc5ZTg2ZjA5Y2E3YjcKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6
IGRhZGVhZjllMzY5ZTA0ZDhiMzMyOTQ5M2ExYTA3NTZkZGQ2MTQwZjAKPiBwcmVyZXF1aXNpdGUt
cGF0Y2gtaWQ6IGFhMDEyNWVkYjYwNGVjZjcwNGE2OTI1MGNjMGQ2OTMwMTNhOTc3YzkKPiBwcmVy
ZXF1aXNpdGUtcGF0Y2gtaWQ6IDYyYjQ5MmI3YjZlOTk1NzI4MmYxMDI5YTAyYWFmMjU4YjYzZTk5
MGYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGZjYzdkZDVkY2Q1ODM5MTNmOTFiZjk5ODZiMDEz
N2MyOTMwZDIyMDAKPiBwcmVyZXF1aXNpdGUtbWVzc2FnZS1pZDogPDIwMjYwOTI5MTMwMjUyLjg2
OS0xLTI2cm90ZUBnbWFpbC5jb20+Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiAzNGE1YTJjNjM4
YTcyOWJkZTQ5YzA2YTMzMGJmMDg0N2JmMTdlNWU5Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBB
cnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
