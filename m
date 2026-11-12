Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C59606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bHPix7r+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PH4ZdQp1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XJvo8/XseEzMZ0J1hyEgv0m9DQoQws/w+2X7Yf0CREE=; b=bHPix7r+EUO89ybY4qRc7aM9dj
	AuxREVVBqW6l6bkSDiYIfj46oG7JdiFZcYmuoLNj2lkwVchy8rS5OAqNH09sldHN3V+UlpbvsiLpf
	+psGf/XULqqhsR0wH7oVWFeObZDbEXZBDe8oJjPDEdQ9aNGRTB7MnqvIY0Gn7/k6NbZhr11CWoCZe
	5R/tiB7prd/w9mI0nkSLrwBZ+Xw8W2uWYt7+UK/B+aSSVQ3MBCiFOvnFPZKt87VmYq9E+3vFMLD+/
	5I/y/SWNUJLIF4tFFvyGI4loJV5CmX+YBnnfTb4N2JKsjrUzdh4phImw4pd9fs/DphoxVDMQ2N81u
	M0Ej8vJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPkW-000000090ZH-3jYC;
	Thu, 12 Nov 2026 08:01:36 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPj8-000000090Mm-3r65
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 08:00:45 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3ab30d04674so2045151fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 00:00:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794470406; cv=none;
        d=google.com; s=arc-20260327;
        b=VEDNo7tNKdIYw6jaSwH8JLPg0h/do0hjaSYDw8DTbZRGHm58G75XqVOl4cT1RBW2f8
         6458zPLw842EZrWqSBJJ+LmqzktB3oJbWvnbk779oeNTxLkEERpQ4ADvpoJHTLnADSJu
         XxQZForOyTMD9zxUeeYV+4yILYYUfUxIsmThGrhtAYzq+3TWLu3VzUFjH00PraoXwEcG
         W/lX0bwCRytfiBuwxcunFmGZLgcdW5drpm5f74AoxV/u2X11bm088KeevJ88Q9/NIDLk
         gP7AV5PpDC3nWbOoT840vNLMOIU7q3PitP7I3zxtPxlmc8qtPTj9uOg2EKsqw39Ext2s
         dgTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IjS6O/6wPytjumUu5o8Aw/uVJLfMkPnSofGe6KzvM0o=;
        fh=3PFvO84BnJKtd8j1uN8dwwsVEn1wdxNzJXkW7YuEdUo=;
        b=JFV6c3z7GSQB5e2nv3W3SzV9YwDTfCVt+zpDNojhjM/MS1mVjd+CG2PmyJhefqAxer
         DqTYvRlZDLJsvvOj5u/y7F2bcNqS3uTAiGZ5lpNe2BbMEQrXaxg7sSCpFmRDPFL79v7Q
         JKL5VT8QwIxTw8XfEJc0kqX3pWhwIn16v2LGM4GV+3cnAuYhnuVfqewTXys5vXKGtNOt
         ufFVJnzPgQFmSmoZVI8VnHilMyD4Nyuyu5EFUe7jmAogwzZOT3iMcNjAaLyr2uGCXg1e
         NfXMDFyT7Eh/TZiWG3nqcnFKC1QoX1rhyrKZA1+1kh3+5qA6h+4Rxc/phyEVqpNPVyYw
         J7/g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794470406; x=1795075206; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IjS6O/6wPytjumUu5o8Aw/uVJLfMkPnSofGe6KzvM0o=;
        b=PH4ZdQp1A6vMrPhe1NlVhImw486VM/dBbSGsFp8uB7M+10If5yYNtIgCWIe2F8Pdba
         7DU9rAB6aaV1fkm2d7+0kzd6A6Nazbo9e8mS2497Q1E3Yq+RCnedB0m9M3+YaX2RqUIN
         odpid55/OflzarXMldclv4ToXxD53ibCm+lLD079r4mIjGviDubgvwYCMx1/It2Pbsmb
         +EyUmXRiTOPB0GLmloc0m7/qKjp9anVp2+TWOKSFWoLtkSsP9PpY8AB4IZ2BsYhS1WSV
         Q4jC0cp6DGp7KSYwSB+ge1i8Uvlhdvs7jiSnVi8NxDDhT8nNFp7+NdiYJdIjpjHZPUVz
         9BfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794470406; x=1795075206;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IjS6O/6wPytjumUu5o8Aw/uVJLfMkPnSofGe6KzvM0o=;
        b=r7CVED3iuUi8+A4eRgzccc5v79Jl8OSOBX9SQj5DMyvRFL0/jSp8ChDvmRZFqya+iH
         q4QoXsgkWNhVVyrFPQKDvAjDBVPmfWNL/AiQ6sAgbb8fdjsX6xo7ajPZ0HSDCpPRs8CW
         S1zErrQ8WCXrGemXZuso3zJc1Nj22wJgZrrox4rXACzh4QbxflDSUepvLf9UFZaARMgw
         861ZYcXOGZSzVrio42a1C8duUMsXArMRhJQVW2CNV38Bdr2meO99XUMTEAy+ygph5TN3
         +O5X1n24vyDHYeaBmwmM0QB9AChqhH4/oz2KTzu3FvFwU3TwXh6Yv+Mcac3bM6507clz
         G+7g==
X-Forwarded-Encrypted: i=1; AL+hErFgypU53ZPyeQSGBYQKROiCdvSYJbCJW23W5Y5TTnPkAebNDEW0LFY0kpDaC6NHYpXJ4OxvqJrICEduLNpUUg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/JqECkSE1WTgW7uIxsDLORjx3/wtymuhBrEWeuI11XUEBLoXLV
	J+rZ1EB6rKRR1KOK8rBdiyzUah5rgyIzfFGyyMKGypVsZ6lwxa8h74swzzXoWtCqdYbJJMDMklM
	ChNgPWCooX9lFjMnk5fiN7S6U6YZRWJkkz4hRY8lN7w==
X-Gm-Gg: AYBFou1M96B0fcz4Ly2hFK6DWTM1wbF+nMx+NTVFAU+5+HuxSRfR6V6lwwEbEjgrUgG
	MSsxi3X8Wo2gyKi8c/z/loCsFsPm4duG6pOTJVVMaeOQut0irIq5A7w2xJIjsd5Cj3PR8o2h1A+
	wPkhY02FKOdaUfcAE+Elwn+bCevOPePfSoINCW22w4Iy7qy6VAD+XrMfYHsrhEEH3h0ngX962em
	e4N+G14lLwJNSOJx9xabmxd+4Opj2Br5HoBZX2iS4cxKWvM0hPnoPZgh0H2q1wg6bBnsWnNBAad
	J5C+iZN+QtNUglU7TuRMqialXLazLTtgYJrtKqTjoJMXJo2eTvPvPPbSbkAhdC+/vJkLuRINxO2
	cC12uTRb+OOLoaHUSH/kCv+GpVV/l7HA4afRnl7bnHhi4M85KEk4UZyxI2l8fvHQmrAkBbLg=
X-Received: by 2002:a05:6512:32ce:b0:5bf:d00a:b6c0 with SMTP id
 2adb3069b0e04-5c15d61a7d2mr1922231e87.3.1794470406245; Thu, 12 Nov 2026
 00:00:06 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-usb-port-pairing-v1-0-9307e29d2ed2@gmail.com>
 <20261110-usb-port-pairing-v1-1-9307e29d2ed2@gmail.com> <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
In-Reply-To: <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Wed, 11 Nov 2026 23:59:55 -0800
X-Gm-Features: AclHuK-RZu7t5oXW3B0hgGonN3UAbxzfPc39DI6ekhiu8UyR_6arhmtUrw5yX_k
Message-ID: <CAEy9hNV9saBWyKxuMR5unmLjzBM2+S7u+FewEevuLV-6yo1ztw@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: usb: generic-ehci: Allow describing the
 root hub ports
To: wens@kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_000035_337463_8E7ED5D3 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hlbi1ZdSwKCk9uIFdlZCwgTm92IDExLCAyMDI2IGF0IDAyOjM1IFVUQywgQ2hlbi1ZdSBU
c2FpIHdyb3RlOgo+IFdvdWxkIHRoaXMgcGF0Y2ggY292ZXJpbmcgYWxsIEhDRHMgYmUgYmV0dGVy
Pwo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDE0MDgyMDM3LjE3NzQ2NzIt
Mi13ZW5zdEBjaHJvbWl1bS5vcmcvCj4KPiBBbHNvIHNlZSBSb2IncyBjb21tZW50IGFib3V0IGNv
dmVyaW5nIHRoZSBwb3J0IG51bWJlcnMuCgpZZXMsIHlvdXJzIGlzIGJldHRlcjogaXQgY292ZXJz
IGV2ZXJ5IGhvc3QgY29udHJvbGxlciwgYW5kCmdlbmVyaWMtZWhjaS55YW1sIGdldHMgaXQgdGhy
b3VnaCB1c2ItaGNkLnlhbWwuIFJvYidzIHBvaW50IGFib3V0IHRoZQpwb3J0IG51bWJlcnMgYXBw
bGllcyB0byBteSBwYXRjaCB0b28uCgp2MiBkcm9wcyB0aGlzIHBhdGNoIGFuZCBidWlsZHMgb24g
eW91ciBwYXRjaCAxIGluc3RlYWQuIE9ubHkgdGhlCk9yYW5nZSBQaSA1LzVCIERUIHBhdGNoLCB3
aGljaCBub3cgZ29lcyB0byB0aGUgUm9ja2NoaXAgdHJlZSBvbiBpdHMKb3duLCBuZWVkcyBpdDsg
dGhhdCBEVCBwYXNzZXMgZHRic19jaGVjayB3aXRoIHlvdXIgcGF0Y2ggYXBwbGllZCwgYW5kCmFs
c28gd2l0aCAncmVnJyBsaW1pdGVkIHRvIDEgYW5kIHVwIGFzIFJvYiBzdWdnZXN0ZWQuCgpUaGUg
djIgY292ZXIgaGFzIG9uZSBxdWVzdGlvbiBmb3IgeW91OiBwYXRjaCAxIHRoZXJlIGxvb2tzIHRo
ZSBncmFwaApwb3J0cyB1cCBieSByb290IGh1YiBwb3J0IG51bWJlciwgd2hpbGUgeW91IGhhdmUg
c2FpZCByb290IGh1YiBncmFwaApwb3J0cyBzaG91bGQgdXNlIHRoZSByYXcgeEhDSSBwb3J0IG51
bWJlci4gV2hpY2ggb25lIGRvIHlvdSB3YW50PwoKVGhhbmtzLApBcnVuCgpPbiBUdWUsIE5vdiAx
MCwgMjAyNiBhdCA2OjM14oCvUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+Cj4gT24gVHVlLCBOb3YgMTAsIDIwMjYgYXQgNDoyMOKAr1BNIEFydW4gSXllbmdhciB2aWEg
QjQgUmVsYXkKPiA8ZGV2bnVsbCthaXllbmdhcjE5OTAuZ21haWwuY29tQGtlcm5lbC5vcmc+IHdy
b3RlOgo+ID4KPiA+IEZyb206IEFydW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdtYWlsLmNvbT4K
PiA+Cj4gPiBUaGUgVVNCIDIuMCBsaW5lcyBhbmQgdGhlIFN1cGVyU3BlZWQgbGFuZXMgb2YgYSBV
U0IgMyBjb25uZWN0b3IgZG9uJ3QKPiA+IGFsd2F5cyByZWFjaCB0aGUgc2FtZSBob3N0IGNvbnRy
b2xsZXIuIE9uIHRoZSBSb2NrY2hpcCBSSzM1ODgsIHRoZQo+ID4gU3VwZXJTcGVlZC1vbmx5IFVT
QiAzLjAgaG9zdCAyICh4SENJKSBpcyBwYWlyZWQgb24gdGhlIGJvYXJkIHdpdGggb25lCj4gPiBv
ZiB0aGUgc2VwYXJhdGUgVVNCIDIuMCBob3N0cyAoRUhDSS9PSENJKS4gT25seSB0aGUgZGV2aWNl
IHRyZWUga25vd3MKPiA+IHdoaWNoIEVIQ0kgcm9vdCBodWIgcG9ydCBzaGFyZXMgYSBjb25uZWN0
b3Igd2l0aCB3aGljaCBTdXBlclNwZWVkIHBvcnQuCj4gPgo+ID4gVGhlIFVTQiBjb3JlIGFscmVh
ZHkgcmVhZHMgYSBodWIncyBPRiBncmFwaCwgd2l0aCBvbmUgZ3JhcGggcG9ydCBwZXIKPiA+IGRv
d25zdHJlYW0gcG9ydCwgYW5kIHVzZXMgaXQgZm9yIHRoZSBwb3J0IGNvbm5lY3QgdHlwZS4gQWxs
b3cgdGhlIHNhbWUKPiA+ICJwb3J0cyIgbm9kZSBvbiBFSENJIGNvbnRyb2xsZXJzLCBzbyB0aGF0
IGEgcm9vdCBodWIgcG9ydCBjYW4gYmUgbGlua2VkCj4gPiB0byBpdHMgdXNiLWNvbm5lY3RvciBu
b2RlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFydW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdt
YWlsLmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvZ2VuZXJpYy1laGNpLnlhbWwgfCAxMyArKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiA+IGluZGV4IDkwOGIw
MmQ5MTc1ZS4uOWRjYmE1MzlkNjBkIDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbAo+ID4gQEAgLTE2
MCw2ICsxNjAsMTkgQEAgcHJvcGVydGllczoKPiA+ICAgICAgICAtIGhvc3QKPiA+ICAgICAgICAt
IG90Zwo+ID4KPiA+ICsgIHBvcnRzOgo+ID4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1s
Iy9wcm9wZXJ0aWVzL3BvcnRzCj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIFRoZSBy
b290IGh1YidzIGRvd25zdHJlYW0gZmFjaW5nIHBvcnRzLCBsaW5rZWQgdG8gdGhlIGNvbm5lY3Rv
cnMgdGhleQo+ID4gKyAgICAgIGFyZSB3aXJlZCB0by4gTmVlZGVkIHdoZW4gYSBjb25uZWN0b3In
cyBTdXBlclNwZWVkIGxhbmVzIGdvIHRvIGEKPiA+ICsgICAgICBkaWZmZXJlbnQgaG9zdCBjb250
cm9sbGVyLCB3aGljaCB0aGVuIHBhaXJzIHdpdGggdGhlIHJvb3QgaHViIHBvcnQKPiA+ICsgICAg
ICB0aHJvdWdoIHRoZSBjb25uZWN0b3IuCj4gPiArCj4gPiArICAgIHBhdHRlcm5Qcm9wZXJ0aWVz
Ogo+ID4gKyAgICAgICJecG9ydEBbMS05YS1mXVswLTlhLWZdKiQiOgo+ID4gKyAgICAgICAgJHJl
ZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4gPiArICAgICAgICBkZXNj
cmlwdGlvbjogUm9vdCBodWIgcG9ydCwgbnVtYmVyZWQgZnJvbSAxLgo+ID4gKwo+Cj4gV291bGQg
dGhpcyBwYXRjaCBjb3ZlcmluZyBhbGwgSENEcyBiZSBiZXR0ZXI/Cj4KPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjEwMTQwODIwMzcuMTc3NDY3Mi0yLXdlbnN0QGNocm9taXVtLm9y
Zy8KPgo+IEFsc28gc2VlIFJvYidzIGNvbW1lbnQgYWJvdXQgY292ZXJpbmcgdGhlIHBvcnQgbnVt
YmVycy4KPgo+IENoZW5ZdQo+Cj4gPiAgcmVxdWlyZWQ6Cj4gPiAgICAtIGNvbXBhdGlibGUKPiA+
ICAgIC0gcmVnCj4gPgo+ID4gLS0KPiA+IDIuNTUuMAo+ID4KPiA+Cj4gPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
