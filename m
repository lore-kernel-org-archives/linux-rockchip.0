Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A1606A323
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 18:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SnnkyEtr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=Eq8Icb5y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=L+UiWwVFUzuWfr9F4h9KW6mnRmQmk9Ti1kXEyitILjc=; b=SnnkyEtrtGw8qgw/ie2PMIhi5r
	HhHpUikUb+D4rzYblShmEQpKSBRXQSATNYvp6Kwz0uFinCGQq5XLeoA5i6OqlAvd0xd0xfyq3QXM+
	KBk0jjdLZgs9tLY6sZvLpIHHT2xW2VMAKww/YUeayliWovxURseEX6I+zi1poG2ImeLwUo90M0hHp
	LKw061daVrCFjaeaKwA4OYcVdERtowKB4GPShEj7vIZj8/RE6MiqVpNNv+lvjNo9xZopjyaVbSuc5
	zK1bKQeRsOzaeOgmgrlZf1OrT8q2TJwNwJlH16OGLa1tQeZqU6m9FrdmBUlQ+liyZpB0qhJkP2n8o
	bW/pGuEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHJk-0000000Av7q-3gge;
	Wed, 25 Nov 2026 18:02:04 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHJc-0000000Av2k-2ex7
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 18:02:00 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c5118deebcfso916241066b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 10:01:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795629715; cv=none;
        d=google.com; s=arc-20260327;
        b=NFqQTwu+sv0kk1CcIt00tFI9BAFheXesyyqJZxvY42AZUZUXnnuUhxjE02zsfiCGlT
         59YI4Y+zd+Waol2kkodoUNRCodq9cA+TRdXfTuIa5jNeWCjV24ikrYcTl4/F742GJHuk
         0nyPdLFfdqXlH9ZJuTlCANXbx7VKOqYb+jY+3rhncX/QOl2q6kIwxHe1nautre3Ewejj
         0Juq9um9122ueWOc7xfQKnyap6JAOk0jPCIGpjoaF1NpCtT1r1x37Wz72wR7UWweUJgJ
         BcS9+b9bLsasih46BQmj69rp3QHAe68YAFy9/YMxqK9CuCyoe3ncpGBZvmk6EalsHNpD
         ijQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PpDc8pLBtpg0emxjGkZmwsobsd8c7YGJx/bCDbNiMik=;
        fh=YGDy80u7d7qVL9PkzGeJEsR02kTvhHEYoYh0ZBO0ZHg=;
        b=fXO8EzJ03HvOPkaPrJuEeWHjD59X58bC+9ZN+sjgQTq32V6KamtaI3rcVCxPjTcM9u
         VAbWrbGPPyCK0j9UrxuQ3qF8WW4FwF4ARhkk+VnTJ+gpZHzS3j2+VsAHFtHUKWXRbKgo
         HTafg3f3Q6GWVEaCvnDbIAXYSWPfLXoF0KPPF7ViaPwKzWWrnkP/3lmByCstYDrJAiH9
         PMHxVQ58EspSXal/ck7CAxYDPHMJrn14029VCBMzYzrbbVh2T7QECxPAHlfIcMBkO62t
         AO0VwowintWHo50fJCDvKY2hzvvBkjUkeEHB4AC8CaTIyzQdl95xD3Wm5H/zga4C5Anq
         I7Ag==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795629715; x=1796234515; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PpDc8pLBtpg0emxjGkZmwsobsd8c7YGJx/bCDbNiMik=;
        b=Eq8Icb5ycG9yowaKw2Mx7rdAGZ5Um01DYhGEawgeFUAP0JohdXJQbm6hBxpclhzgp9
         lrQwqifH3Mn3ylnEzBkiYWihwyX6ooVGiFXepfzVq6JSZbHh+b20weqC7lbX0TvYctfZ
         UdqTkbre5c8WmsGaQRtGO2d3NShL+4sQ2FNoG8AtCExrNwPZlzcLwzJi4D+NsnscDSt2
         OZndbu2T/Ga42ouLh0QOzAr6jaXR0tmWndoUdbkRZ00aDenj8uI0k5y2tTCH2p8t20xe
         wYyR6BbSQyu9sxG2DGSN+qJ+NOyVOVN1bs4RZDUBBTvobmxfgwXmPq6AHzsgxcOn7K9z
         /hpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795629715; x=1796234515;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PpDc8pLBtpg0emxjGkZmwsobsd8c7YGJx/bCDbNiMik=;
        b=JWEMRdDhlrC4m280KaJ6jXoY+Q1cTnQEfDDg4sDemAQ/us68VFQxCsHoIRWOL3gDsk
         XzqfegTWDdNxkjENqGzlPmHou3VDDE7BnN9QGXmMpQc9P41myO4jvKlhxil6Suz2lLAd
         HkkUmFlTCuRvcBF32+kLL18/Rs4T+gxP4hee34hJXtry5aziKDJlYSZsscS0Uo38QPpT
         euJWehHsgKutLVilGBp+YHoQLXKoSYP6ZV/0vq4Iuv7lpRoNxBQQ1Jm4wqbdbS1xJF0S
         wbmd750n83rlGnAQoOdmWWIfS0oVNYuIAHAC3h+75jvwyAnauYnYV76Cf51RgpAP2Li8
         ApaQ==
X-Forwarded-Encrypted: i=1; AL+hErEh0/fLbdokwr6irObUIF81K58VO1NnDbT9c/iIhNXOPaQTHlCPMyy52rSdqNCaxpmEOPt0JjpkXok4kYwMlA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/5pEU3sL/leU0b9IXcIjB1eo/V4+hNdpbFSShQB2SGOljv8FOj
	C2ElyT4GMDZOupOZcMSmnVs7nkbXvE4L4H2Yi/qdnFQIT9tw36XRBh3JTkMn8KBeMwdvva5P9pM
	eQy7t0ub1RXzXP/MZQ5NOrsp/tF7JNBH+dXSW9KgDHQ==
X-Gm-Gg: AZFdTZe128Rle7INHcnYVoIkR3jQ23BbhNMMSOpewDLJ7I8Ckpng5ytEdyAb0C1T8H8
	E4WDgv5hTSU1PGuxi9OD6kvOClsgMW0liz1etIdOZsfEwLX4RjVea102GxAtxxWzCH+XeT/1yjg
	d8i0S3CMRIAghJ6CbxB5rSr0rajmf1JyIWybRbgcf+DignmTWT6BY4Cj9cN9eeSh+3IhLYQi33R
	vS80oWjb/XGMAQMQO/KJIOSvVgh05Ijbrhz/HrRod0Jsw0PjjML2VGLVbwS+hgXHPcguaQbBK+o
	/AZxfcqCIUSsMPYAOTvdUAwmAPCAt72AIrE9v2YRSnrQ5KdaByi0xA4zJERWCo57RBpnSSTGdmg
	PtCkWJK431IVAwauKM72sJrH47XzBfpR++dq+t+UwCVyLbLXYKieMYQyIo7L4GIuBQfT5
X-Received: by 2002:a17:906:af85:b0:c3f:dce3:20c5 with SMTP id
 a640c23a62f3a-c513ac496d8mr1123543566b.44.1795629714600; Wed, 25 Nov 2026
 10:01:54 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
 <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net>
 <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
 <2f8da604-36af-4944-8168-02b046e97699@lunn.ch> <CAKTNdwG1sSBVKcKpHBj24nFCdc6WVKabV5=K4sJFucWpTLqRQQ@mail.gmail.com>
 <1defc5c8-ba61-40d2-99f3-6654f1743af1@lunn.ch> <CAKTNdwFktkMtdLW2GzqzLH+LO4kF0uY0jWpnvO5vbWmd-e4iWw@mail.gmail.com>
 <789d3358-81cf-4276-9f8e-4787df120059@lunn.ch>
In-Reply-To: <789d3358-81cf-4276-9f8e-4787df120059@lunn.ch>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 22:01:39 +0400
X-Gm-Features: Aa3M54rXKAuPqQg_Ygp0o8wODv5WUBqheLR9BXAdmhPLGte_-jSen4aa0CPalg8
Message-ID: <CAKTNdwHugVHb7hBzKHdorrCNmBanZ+k21GdMJieD7=_Z7446bg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] nvmem: rockchip-otp: Derive MAC addresses from the
 CPU ID
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ryan Leung <untilscour@protonmail.com>, Srinivas Kandagatla <srini@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>, 
	Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_100157_845958_BCAB99C5 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgODo0MeKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ID4gVGhhdCB3YXkgb2ZfZ2V0X21hY19hZGRyZXNzX252bWVtKCkg
anVzdCB3b3Jrcywgc28gdGhlIE1BQyBkcml2ZXIganVzdAo+ID4gPiBuZWVkcyB0byBjYWxsIG9m
X2dldF9tYWNfYWRkcmVzcygpIG9yIG9mX2dldF9ldGhkZXZfYWRkcmVzcygpLgo+ID4KPiA+IFRo
ZXkgc3RpbGwgbmVlZCB0byByZWxheCB0aGUgc2l6ZSBjaGVjayBhcyBkb25lIGJ5IHBhdGNoIDIv
NSBpbiB0aGlzCj4gPiBzZXJpZXMsIGJlY2F1c2UgdGhlIENQVUlEIGNlbGwgaXMgMTYgYnl0ZXMg
bG9uZy4gU3Jpbml2YXMgcmVqZWN0ZWQgYQo+ID4gcHJpb3IgdmVyc2lvbiBvZiB0aGlzIHNlcmll
cyB0aGF0IGF0dGVtcHRlZCB0byByZXR1cm4gY2VsbCBjb250ZW50cyBvZgo+ID4gZGlmZmVyZW50
IHNpemVzIGRlcGVuZGluZyBvbiB0aGUgdXNlIGNhc2UuIEN1cnJlbnRseSBhbnkgY2VsbCBzaXpl
ICE9Cj4gPiBFVEhfQUxFTiBnZXRzIHJlamVjdGVkIGJ5IHRoZSBuZXQgY29yZSwgbm90IGp1c3Qg
PCBFVEhfQUxFTi4KPgo+IEFoISBJIGhhZCBub3QgbG9va2VkIGF0IHRoZSB3aG9sZSBzZXJpZXMu
Cj4KPiBIYXZpbmcgdG8gY2hhbmdlIHRoZSBjb3JlIGxpa2UgdGhpcyBpcyBhbiBhcmd1bWVudCBm
b3IgZG9pbmcgaXQgaW4gdGhlCj4gTUFDIGRyaXZlci4gSXQgYXNrZWQgZm9yIGEgTUFDIGFkZHJl
c3MuIFdoYXQgaXQgZ290IGJhY2sgaXMgbm90IGEgTUFDCj4gYWRkcmVzcyBpZiBpdCBkb2VzIG5v
dCBoYXZlIDYgb2N0ZXRzLgo+Cj4gUGxlYXNlIHRocm93IHRoaXMgYWxsIGF3YXkgYW5kIGRvIGl0
IGluIHRoZSBNQUMgZHJpdmVyLiBJZiB0aGVyZSBhcmUKPiBtdWx0aXBsZSBSZWFsVGVrIE1BQyBk
cml2ZXJzIGludm9sdmVkLCB5b3UgY2FuIHB1dCBpdCBpbnRvIGEgbGl0dGxlCj4gbGlicmFyeSBh
bmQgc2hhcmUgaXQgYWNyb3NzIHRoZSBkcml2ZXJzLgo+Cj4gSXQgaXMgYWN0dWFsbHkgYW4gaW50
ZXJlc3RpbmcgaWRlYS4gTWF5YmUgaXQgc2hvdWxkIGJlIHBsYWNlZCBpbgo+IG9mX25ldC5jLCBz
byBvdGhlciBkcml2ZXJzIGNhbiB1c2UgaXQuIEhvdyBnZW5lcmljIGlzIGl0IGhhdmluZyBhIENQ
VQo+IElEIGluIHRoZSBPVFA/IEFyZSB0aGVyZSBvdGhlciB2ZW5kb3JzIGRvaW5nIGl0PwoKRnJv
bSBhIHF1aWNrIG92ZXJ2aWV3LCBBbGx3aW5uZXIgZG9lcyBhIHNpbWlsYXIgdGhpbmcgWzFdIGJ5
IHJlYWRpbmcgYQoiU0lEIiBmcm9tIGl0cyBlRnVzZXMsIGFuZCBBbWxvZ2ljIFsyXSBieSByZWFk
aW5nIGl0cyBzZWN1cmUtbW9uaXRvcgpzZXJpYWwgbnVtYmVyIC0gc28gaXQncyBhIHJlYXNvbmFi
bHkgY29tbW9uIHBhdHRlcm4uIEV2ZXJ5b25lIHVzZXMKdGhlaXIgb3duIGRlcml2YXRpb24gZnVu
Y3Rpb25zIHRob3VnaC4KCkkgdGhpbmsgSSBjb3VsZCB0cnkgYW5kIGFkZCBhbm90aGVyIGJyYW5j
aCBpbiBvZl9uZXQuYyB0byBwYXJzZSBhbgpOVk1FTSBjZWxsIGNhbGxlZCBlLmcuICJ1bmlxdWUt
aWQiIHdpdGggcGxhdGZvcm0tc3BlY2lmaWVkIGRlcml2YXRpb24KZnVuY3Rpb25zIHNlbGVjdGVk
IGJ5IHRoZSBjZWxsJ3MgY29tcGF0aWJsZSBzdHJpbmcuIFRoZW4gZGVyaXZlIHRoZQpNQUMgaW5k
ZXggZnJvbSB0aGUgT0YgYWxpYXMsIHNvIHRoYXQgdGhlIHBoYW5kbGUgYXJndW1lbnQgY2FuIGdv
IGF3YXksCmFuZCB0aGUgbnVtYmVyaW5nIGNhbm5vdCBkcmlmdCBhcGFydC4gV2lsbCBzZW5kIGEg
djUgd2l0aCB0aGF0CmFwcHJvYWNoIGlmIGl0IHdvcmtzIG91dC4KClsxXSBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS91LWJvb3QvdjIwMjcuMDEtcmMyL3NvdXJjZS9ib2FyZC9zdW54aS9ib2Fy
ZC5jI0w3ODMtTDgyOApbMl0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vdS1ib290L3YyMDI3
LjAxLXJjMi9zb3VyY2UvYXJjaC9hcm0vbWFjaC1tZXNvbi9ib2FyZC1jb21tb24uYyNMNzktTDEw
NwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
