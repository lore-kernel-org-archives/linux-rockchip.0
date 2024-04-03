Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB81BCD1284
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 01:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlbHVXqykCuQNrzfH9vki5yzoUJynAmMBwcpbT+qO/E=; b=G+wBHSIfupNjvz
	tCMfTEY2YAs93g427J4DFm5CLh+ENznXbP3jefcDWF68j5IphQGvPOTum5ZYN6YHeZJlfcq68O8px
	JkJt8F99pYj1+pYg+JBYL2S11+ZxHprY+onKjJgNt1amuYnTd6idTrTZhaMfvWQpdJSkZH9e22X4j
	EaOK6j3VlxCfjSELNNdCV0IKiPaQXX+kO7tFsBsdUl10uL7LpuUkDJ0X4m1ssiNchXxokJfVtgfxP
	AHdkiN1hTAJTxXkGLldOSfL1Rw2FnYAnooPy4xNzvO4DrRCsjhT97qSnmXsF+ppkrFhTdwamub6LS
	NC++oj5ziEnr7ITuj0CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrpkE-0000000Da0c-1TZa;
	Wed, 03 Apr 2024 01:48:54 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrom3-0000000DPd3-3iIx
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 00:46:45 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-431347c6c99so137081cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Apr 2024 17:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712105200; x=1712710000; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NNuHBBz5fNhwg1IXVySVK08J4FfQhYlFpyyXMgPlIw=;
        b=aZYXcgKMLqmyU6uLsbmwxhwOq+VIHG+eSV6TAog6HKJQ8uxeubvx+/uRqviSNOWbow
         9Aecc5oW7Xvv9Ig/Ea4csW2IkZhcadRws+pwleXpOr7Bls/d1pFtCUE5U9h1AuBHzaH+
         zRJp01SZ/0g81ua3GYFkJ+x/wGfg1POq/INnoXq+N0XVr/gNpaeD4zkhJLsIgWCGXDtL
         b4nQi4vfNXWiLTSaG0+spB3M3rrzX8b7uFbor/GKHWvnVQQIfXsB5jhcGBWtbFmzAq5v
         JDk0R+efL0IVSUvVeQIhRBlJ+S6QTqNI+I2qTf9xvPvkQ7SsSCJZhjru0M+ELUTIcvxx
         BIZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712105200; x=1712710000;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8NNuHBBz5fNhwg1IXVySVK08J4FfQhYlFpyyXMgPlIw=;
        b=BXnqbAX0ReAUGdlvMeOuZDjo7+PMYMdaqq1pJSDB1ERVzLgMD4Rw2hMquUrVC2rof/
         324hbr/kbDpoczQgLUG/i8rBStu529iobsxc9imdlSWaeaTk/Nit5Xr971dj00Mu7WBP
         Hu1Hq3dgY+4uNzizNH9H7h95pqVpHt3MR73wQWV5cZ8P36WIbFBNL8jqsDebirp2s7h0
         95VxvP1inKLKWExoDhmxfawKlBgMxLYODeQ7lraHXl9/6g9MVX6gScKYC+zgE8vFn6QL
         ZtjHGqPxZ36fsrLycso2lgfFLaIZeti+ubIityenJtRgnZNbTwteP9eRdJhHon0nGX1Y
         qCow==
X-Forwarded-Encrypted: i=1; AJvYcCU5v1MTfcuPEDPA9mFL1irHpfHBBsI1pQAcztDYpKdioPGLxJNt85q10/ToimtDB5foUSgiK2sdoACtrljek2589QinITmg68dCMtp24P1KShDV
X-Gm-Message-State: AOJu0Ywxf+54H+zl+w2BjCP6Cnffh5K5S+hnBDLIgPrPiRhJi5rTAAmC
	H98y34HXt2nHC4kZeVT+z70m+lOFTvITSPeig/N1cNC36ZpimvzIzBpMSkJaxpbHERHKcMvfN/a
	zC39zYsSwr6SbfhSH1vz/ffUs4tm1fr9pm7Jn
X-Google-Smtp-Source: AGHT+IG3Nh5xeWONVj/egqi6H3Fg2V93xZRW/7SNzNwCn3y/D1xKuDiWwP1Re4yzQ3c7avJWMSoInLQSVUBCPKTwuiE=
X-Received: by 2002:a05:622a:407:b0:431:68e6:314c with SMTP id
 n7-20020a05622a040700b0043168e6314cmr57594qtx.29.1712105200256; Tue, 02 Apr
 2024 17:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
 <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org> <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
 <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
In-Reply-To: <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 2 Apr 2024 17:46:04 -0700
Message-ID: <CAGETcx_ToHsp_c+Yt0qqST4Zd-GC7dPn_j=PpB1n1xpZtOnMfg@mail.gmail.com>
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
To: Pratham Patel <prathampatel@thefossguy.com>
Cc: Dragan Simic <dsimic@manjaro.org>, sebastian.reichel@collabora.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	regressions@lists.linux.dev, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_174643_953057_3C90115E 
X-CRM114-Status: GOOD (  28.18  )
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

T24gVHVlLCBBcHIgMiwgMjAyNCBhdCA0OjMy4oCvUE0gUHJhdGhhbSBQYXRlbAo8cHJhdGhhbXBh
dGVsQHRoZWZvc3NndXkuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSBBcHIgMiwgMjAyNCBhdCA0OjU0
IEFNIElTVCwgU2FyYXZhbmEgS2FubmFuIHdyb3RlOgo+ID4gT24gU2F0LCBNYXIgMjMsIDIwMjQg
YXQgMTA6MTDigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IEhlbGxvIFByYXRoYW0sCj4gPiA+Cj4gPiA+IE9uIDIwMjQtMDMtMjMgMTg6MDIs
IFByYXRoYW0gUGF0ZWwgd3JvdGU6Cj4gPiA+ID4gSSBsb29rZWQgYXQgdGhlIHBhdGNoIGFuZCB0
cmllZCBzZXZlcmFsIHRoaW5ncywgbmVpdGhlciByZXN1bHRlZCBpbgo+ID4gPiA+IGFueXRoaW5n
IHRoYXQgd291bGQgcG9pbnQgbWUgdG8gdGhlIGNvcmUgaXNzdWUuIFRoZW4gSSB0cmllZCB0aGlz
Ogo+ID4gPgo+ID4gPiBDb3VsZCB5b3UsIHBsZWFzZSwgY2xhcmlmeSBhIGJpdCB3aGF0J3MgdGhl
IGFjdHVhbCBpc3N1ZSB5b3UncmUKPiA+ID4gZXhwZXJpZW5jaW5nIG9uIHlvdXIgUm9jayA1Qj8K
PiA+Cj4gPiBQcmF0aGFtLCBjYW4geW91IHJlcGx5IHRvIHRoaXMgcGxlYXNlPyBJIGRvbid0IHJl
YWxseSB1bmRlcnN0YW5kIHdoYXQKPiA+IHlvdXIgaXNzdWUgaXMgZm9yIG1lIHRvIGJlIGFibGUg
dG8gaGVscC4KPgo+IEhpLAo+Cj4gSSBhcG9sb2dpemUgZm9yIG5vdCByZXBseWluZy4gU29tZWhv
dywgSSBkaWQgbm90IG5vdGljZSB0aGUgcmVwbHkgZnJvbQo+IERyYWdhbi4gOigKPgo+IFNpbmNl
IHRoaXMgcGF0Y2ggd2FzIGFwcGxpZWQsIGFuIGlzc3VlIGluIHRoZSBSb2NrIDVCJ3MgRFQgaGFz
IGJlZW4KPiB1bmVhcnRoZWQgd2hpY2ggbm93IHJlc3VsdHMgaW4gdGhlIGtlcm5lbCBiZWluZyB1
bmFibGUgdG8gYm9vdCBwcm9wZXJseS4KPgo+IEZvbGxvd2luZyBpcyB0aGUgcmVsZXZhbnQgY2Fs
bCB0cmFjZSBmcm9tIHRoZSBVQVJUIGNhcHR1cmU6Cj4KPiBbICAgMjEuNTk1MDY4XSBDYWxsIHRy
YWNlOgo+IFsgICAyMS41OTUyODhdICBzbXBfY2FsbF9mdW5jdGlvbl9tYW55X2NvbmQrMHgxNzQv
MHg1ZjgKPiBbICAgMjEuNTk1NzI4XSAgb25fZWFjaF9jcHVfY29uZF9tYXNrKzB4MmMvMHg0MAo+
IFsgICAyMS41OTYxMDldICBjcHVpZGxlX3JlZ2lzdGVyX2RyaXZlcisweDI5NC8weDMxOAo+IFsg
ICAyMS41OTY1MjRdICBjcHVpZGxlX3JlZ2lzdGVyKzB4MjQvMHgxMDAKPiBbICAgMjEuNTk2ODc1
XSAgcHNjaV9jcHVpZGxlX3Byb2JlKzB4MmU0LzB4NDkwCj4gWyAgIDIxLjU5NzI0N10gIHBsYXRm
b3JtX3Byb2JlKzB4NzAvMHhkMAo+IFsgICAyMS41OTc1NzVdICByZWFsbHlfcHJvYmUrMHgxOGMv
MHgzZDgKPiBbICAgMjEuNTk3OTA1XSAgX19kcml2ZXJfcHJvYmVfZGV2aWNlKzB4ODQvMHgxODAK
PiBbICAgMjEuNTk4Mjk0XSAgZHJpdmVyX3Byb2JlX2RldmljZSsweDQ0LzB4MTIwCj4gWyAgIDIx
LjU5ODY2OV0gIF9fZGV2aWNlX2F0dGFjaF9kcml2ZXIrMHhjNC8weDE2OAo+IFsgICAyMS41OTkw
NjNdICBidXNfZm9yX2VhY2hfZHJ2KzB4OGMvMHhmMAo+IFsgICAyMS41OTk0MDhdICBfX2Rldmlj
ZV9hdHRhY2grMHhhNC8weDFjMAo+IFsgICAyMS41OTk3NDhdICBkZXZpY2VfaW5pdGlhbF9wcm9i
ZSsweDFjLzB4MzAKPiBbICAgMjEuNjAwMTE4XSAgYnVzX3Byb2JlX2RldmljZSsweGI0LzB4YzAK
PiBbICAgMjEuNjAwNDYyXSAgZGV2aWNlX2FkZCsweDY4Yy8weDg4OAo+IFsgICAyMS42MDA3NzVd
ICBwbGF0Zm9ybV9kZXZpY2VfYWRkKzB4MTljLzB4MjcwCj4gWyAgIDIxLjYwMTE1NF0gIHBsYXRm
b3JtX2RldmljZV9yZWdpc3Rlcl9mdWxsKzB4ZGMvMHgxNzgKPiBbICAgMjEuNjAxNjAyXSAgcHNj
aV9pZGxlX2luaXQrMHhhMC8weGM4Cj4gWyAgIDIxLjYwMTkzNF0gIGRvX29uZV9pbml0Y2FsbCsw
eDYwLzB4MjkwCj4gWyAgIDIxLjYwMjI3NV0gIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MjBjLzB4
M2UwCj4gWyAgIDIxLjYwMjY2NF0gIGtlcm5lbF9pbml0KzB4MmMvMHgxZjgKPiBbICAgMjEuNjAy
OTc5XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKClRoaXMgZG9lc24ndCBtYWtlIGEgbG90IG9m
IHNlbnNlLiAicmVtb3RlLWVuZHBvaW50IiBzaG91bGRuJ3QgYmUKcmVsYXRlZCB0byBhbnl0aGlu
ZyB0byBkbyB3aXRoIHBzY2kgY3B1aWRsZS4gSSdtIGd1ZXNzaW5nIHNvbWV0aGluZwplbHNlIGlz
IGZhaWxpbmcgbXVjaCBlYXJsaWVyIGluIGJvb3QgdGhhdCdzIGluZGlyZWN0bHkgY2F1c2luZyB0
aGlzCnNvbWVob3c/IENhbiB5b3UgcGxlYXNlIHRha2UgYSBsb29rIGF0IHdoYXQncyBmYWlsaW5n
IGVhcmxpZXIgYW5kIGxldAp1cyBrbm93PyBPciBzZWUgd2hhdCBkcml2ZXIgcHJvYmUgaXMgZmFp
bGluZyB1cCB0byB0aGlzIHBvaW50IGJ1dCB1c2VkCnRvIHdvcmsgaW4gdGhlIGdvb2QgY2FzZS4K
CkFsc28sIHdoZXJlIGlzIHRoZSBkdHMgZmlsZSB0aGF0IGNvcnJlc3BvbmRzIHRvIHRoaXMgYm9h
cmQgaW4gdXBzdHJlYW0/IElzIGl0CmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvY2stNWIuZHRzCgo+Cj4gPiBBbHNvLCBjYW4geW91IGdpdmUgdGhlIG91dHB1dCBvZiA8ZGVi
dWdmcz4vZGV2aWNlc19kZWZlcnJlZCBmb3IgdGhlCj4gPiBnb29kIHZzIGJhZCBjYXNlPwo+Cj4g
SSBjYW4ndCBwcm92aWRlIHlvdSB3aXRoIHJlcXVlc3RlZCBvdXRwdXQgZnJvbSB0aGUgYmFkIGNh
c2UsIHNpbmNlIHRoZQo+IGtlcm5lbCBuZXZlciBtb3ZlcyBwYXN0IHRoaXMgdG8gYW4gaW5pdHJh
bWZzIHJlc2N1ZSBzaGVsbCwgYnV0IGZvbGxvd2luZwo+IGlzIHRoZSBvdXRwdXQgZnJvbSB2Ni44
LjEgKCoqd2l0aCBhZm9yZW1lbnRpb25lZCBwYXRjaCByZXZlcnRlZCoqKS4KPgo+ICMgY2F0IC9z
eXMva2VybmVsL2RlYnVnL2RldmljZXNfZGVmZXJyZWQKPiBmYzQwMDAwMC51c2IgICAgcGxhdGZv
cm06IHdhaXQgZm9yIHN1cHBsaWVyIC9waHlAZmVkOTAwMDAvdXNiMy1wb3J0Cj4gMS0wMDIyICB0
eXBlY19mdXNiMzAyOiBjYW5ub3QgcmVnaXN0ZXIgdGNwbSBwb3J0Cj4gZmMwMDAwMDAudXNiICAg
IHBsYXRmb3JtOiB3YWl0IGZvciBzdXBwbGllciAvcGh5QGZlZDgwMDAwL3VzYjMtcG9ydAo+Cj4g
SXQgc2VlbXMgdGhhdCB2Ni44LjIgd29ya3MgX3dpdGhvdXQgbmVlZGluZyB0byByZXZlcnQgdGhl
IHBhdGNoXy4gSSB3aWxsCj4gaGF2ZSB0byBsb29rIGludG8gdGhpcyBzb21ldGltZSB0aGlzIHdl
ZWsgYnV0IGl0IHNlZW1zIGxpa2UKPiBhODAzN2NlYjg5NjQgKGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBkcm9wIHJvY2tjaGlwLHRyY20tc3luYy10eC1vbmx5IGZyb20gcmszNTg4IGkycykKPiBzZWVt
cyB0byBiZSB0aGUgb25lIHRoYXQgZml4ZWQgdGhlIHJvb3QgaXNzdWUuIEkgd2lsbCBoYXZlIHRv
IHRlc3QgaXQKPiBzb21ldGltZSBsYXRlciB0aGlzIHdlZWsuCgpPaywgb25jZSB5b3UgZmluZCB0
aGUgcGF0Y2ggdGhhdCBmaXhlcyB0aGluZ3MsIGxldCBtZSBrbm93IHRvby4KCi1TYXJhdmFuYQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
