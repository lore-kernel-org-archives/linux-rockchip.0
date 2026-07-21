Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9730EC4451C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 07:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K47oAGzBEZRYAn8HaEK9Doy8AOkKmlQVDZ2R9tSHNg=; b=1a1rbJIOchnFoP
	fAS4aVQyGDacZtFiTsmuy6yPZWMusIYGx6v/ccGUQ+/xNqp3Mr1JEcAKsP9VTWRuRJmFobf6OL3g+
	zobH4IM8ueMC65PfdWieoQJZplO/XqRbHdjCprakAHZkYcWBhmY7J5Nce4UMh75ZBjfmwqygIIoa4
	v9v9S69IQb4mWMOoHoQwOsLf/W4+Nw0QaJSwOObQXNHj6EW6a1pEkR4yKOf1etcJUMM+D0DPYUr+c
	if6vGpmNhmL+mY7AH4lsMawAXJcewvMDYjYqvuHbgSPgKpn/EKHXeuL6Vg+e4htcV1D0K9ZHlqhQv
	TOBbWtYunLEdOtwap+GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5GC-00000008hL2-3ctt;
	Tue, 21 Jul 2026 07:51:29 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5GA-00000008hJB-1iK0
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 07:51:27 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-8080651d2cfso20694367b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 00:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784620285; cv=none;
        d=google.com; s=arc-20260327;
        b=bytPAf8LrXK5uY/T3UeJmgh3YUNZlJllbzbFN5aUi154wJKaPoUTljEgL8afNjrMMK
         A9EtCv+2p8k5syLcUsl705NfqH9uzcouRjjW7u30f97dhayj+0IkUrncTq8Qttm5MNTj
         d5QmQOYkEsXE2fRmbMUDIFN46l2nAocipzRepUYg9gGZE0EmxK0iE2y7rBe6OlK+KZn7
         qKCEGt8qN6tqvUnZWanwEiL09VT2XXFcV30KEN36Byv3mdEb/1pG/cnK8vLmupOXEhel
         tIHHLXY5oZjszVTNIT5IXqFKy9H3J10dNQpZ5D4qS5xue3cHaLS5R1poey8X8Vo2Kzqv
         Jvxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vZzSeZR0bkDEH8l+WELeqcCX8Q33dRM0eRRSsd4cPwc=;
        fh=qpfIDb0G13M41eAMLlBClWFgDege09dN2a1wk12613s=;
        b=myjV+ApcmDTLlURU75w3MCzRF3sH+MeFUa2svnFNvfJWX9MdvtscAZfBJCtz0WrbxP
         hUmY+H/a7ptjLU+JcEGZDrk7qrPNkN617Lr/C+/hsKjULDAqtdLCKToG+1Cu1kQ8UDP9
         G//PLiAHfY5hjh0y42zhA+IVhdXrMBLWAvWZ9rX6eFujmmRneJrYguebHRsi1vVL0p+a
         YOvpdnr0hwXLZBx4DErbFhJ/ZtcIXV5kSSKnt8PuyJN5UVLCP7Ave1Ye9OwTBUPNdFZr
         jyi7LR28U+0pje40uZZN51N9CXxRI2VkNfniBXHSgQkXqIT+meTFkDK0nornQXjCwLBo
         is5Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784620285; x=1785225085; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vZzSeZR0bkDEH8l+WELeqcCX8Q33dRM0eRRSsd4cPwc=;
        b=R8x5NBEbmIzidRBdJjidFg/9y3U7/o9JEuIc7V/kBPReyhCiijXstblNVyGMewsZYE
         ThX2HZy4wHnUgWVkxrhiwfN/ZsuiZc2jH/dZacBhnTp3lWV9f+ljatVywX8o3XcE9mb/
         sfJRcV8KSuQie3C+qCX8bRNcXvnZ05E762Cr+7oCNQMKgjIu/EGlO0b9EPXr8PkcBaqL
         kT84IS2tGXOFH7JwhqI+UfKjoKIVm8icMOawd8CtWbJJsiUiTejngqqbCzCEJJCdC9yL
         lojJz/rOhYICChQLoc3wyM7F41adcWEIzj4tn8MBBOPHb4sGfaKYTAgcLSerMX1tC9xr
         i4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784620285; x=1785225085;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vZzSeZR0bkDEH8l+WELeqcCX8Q33dRM0eRRSsd4cPwc=;
        b=AvQMJywx82NDnT/Kk8LyNGDY4eZlj3RRHr9n/35mz4HGFtn/9szo5R93ypUNUE1ra9
         Ehf61gutXNvZrw62wQVH+l/aLqVCE4ktwQtEQv1gBsh9ZKSZdaHI+Q4FN8ii9EajNk/A
         pNz/6c+Ks4gW9g6YQeAOobrgdWDcCqWgAIcTAGkzvIwJiBl10/S01h6/hnuf9JbkaZwk
         76wOE+bE1+k1Ix4lBidFM0IOFaeEuyLQVBrCS8xAXiGbWkUvuJnDWf6z43+iEW9KsWWL
         UuSV917E0VY14CIFJPBxTixTnwcqTAc7N3bj5Zg9ibHbwehL1JTFnAwNQkv3q2s+5Qbz
         f6CQ==
X-Forwarded-Encrypted: i=1; AHgh+RqyZwnZQxTDrjYHZmiDcRVTlizXy1QxwF0q6dk4PCU8q4HEn19Ahd2yoMr4LzoQQZenJtSlu5+QjstwfMOxDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXSk2yq5RwQlsj7AFS1GaGYLim24eY8IOBBxAsv19tjM2N0vvq
	FOTzu0h/n6LvqHrZjsp6rV2axRERchyG0A9M2jHis/3Jm5E5z4DK6uOLFZ3N0SELUhc2jZSM4c6
	l1ViAGRMP3wBEvMairz2MjGQ6aia4vec=
X-Gm-Gg: AR+sD10ro5obmSgkY59fk0wyyzmXAB1IL88SfDdQCPK1apTZekfZ5QSLQoAfWuEbydD
	597Y+MklAFWbFHl4H4OWYVwb8ydF2N4FLh6GDGTnlJ+1RVnnHpad4LUFF4RnDCsil4ssCGQid1N
	q0sOldJ2FJQq5ohOp2YO8OtAQYlA/nKq9UIXpA1cEm7N5q4GEDqSIkBt3/9PburbTqS7sNEBVpV
	JvTGyhOOdCaH5xABZHcl0N25f0Ia7Yd/mc1e/uknN6umZfJ0eqdL8Br19pRLcOOpni9YSDZ9pt5
	Vq7C462e5j8J+A7eqh6x
X-Received: by 2002:a53:b186:0:b0:668:7dbd:7a07 with SMTP id
 956f58d0204a3-66880b4d962mr392625d50.5.1784620285255; Tue, 21 Jul 2026
 00:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <20260721064115.64809-1-royalnet026@gmail.com> <20260721064115.64809-3-royalnet026@gmail.com>
 <20260721070036.51C371F000E9@smtp.kernel.org>
In-Reply-To: <20260721070036.51C371F000E9@smtp.kernel.org>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Tue, 21 Jul 2026 09:51:14 +0200
X-Gm-Features: AUfX_myuY5cs_jihA3WZbNrynJGYGTTN4HuyfxbJXYsOu2kmiTef-qbsCaf3Zt8
Message-ID: <CAEWPSH7FZw7XDhHD6x+mWcQR2VnLs5yF5LUGMisQoCsv43-z8w@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: sashiko-reviews@lists.linux.dev, 
	Dmitry Osipenko <dmitry.osipenko@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	linux-kernel@vger.kernel.org
Cc: robh@kernel.org, media-ci@linuxtv.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_005126_462187_6FAEFFCC 
X-CRM114-Status: GOOD (  38.02  )
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

PiBEb2VzIHRoaXMgYnl0ZSByZXZlcnNhbCB1c2luZyBzd2FiMzIoKSBpbmNvcnJlY3RseSBzY3Jh
bWJsZSB0aGUgTiBhbmQKPiBDVFMgdmFsdWVzPwoKTm8uIFRoaXMgaXMgdGhlIHRoaXJkIHJldmll
dyBvZiB0aGlzIGZpbmRpbmcgLS0gaXQgd2FzIHJhaXNlZCBvbiB2MgphbmQgdjMgaW4gdGhlIGJl
MzJfdG9fY3B1KCkgc3BlbGxpbmcgYW5kIGFuc3dlcmVkIGJvdGggdGltZXMsIGFuZCB0aGUKY29t
bWVudCBhYm92ZSB0aGUgY29kZSBkb2N1bWVudHMgdGhlIGxheW91dC4gVGhlIHByZW1pc2UgZG9l
c24ndAptYXRjaCB0aGUgQUNSIHN1YnBhY2tldCBmb3JtYXQ6IENUUyBpcyBub3Qgc3RvcmVkIExT
Qi1maXJzdCBmcm9tIFBCMS4KUGVyIHRoZSBIRE1JIHNwZWMsIHN1YnBhY2tldCBieXRlIDAgaXMg
cmVzZXJ2ZWQsIENUU1sxOToxNl0gc2l0cyBpbgpQQjFbMzowXSwgQ1RTWzE1OjhdIGluIFBCMiBh
bmQgQ1RTWzc6MF0gaW4gUEIzIC0tIE1TQiBmaXJzdCAtLSB3aXRoIE4KbGlrZXdpc2UgaW4gUEI0
Li5QQjYuIFRoZSBwYWNrZXQgZGVjb2RlciBzdG9yZXMgUEIwIGluIHJlZ2lzdGVyIGJpdHMKWzc6
MF0sIHNvIHJldmVyc2luZyB0aGUgd29yZCBpcyBwcmVjaXNlbHkgd2hhdCBsaW5lcyB0aGUgYnl0
ZXMgdXAKYmVmb3JlIHRoZSAyMC1iaXQgbWFza3MuIHN3YWIzMigpIGFuZCB0aGUgcHJldmlvdXMK
YmUzMl90b19jcHUoKS9jcHVfdG9fYmUzMiBzcGVsbGluZyBwcm9kdWNlIHRoZSBzYW1lIHZhbHVl
IG9uIGJvdGgKZW5kaWFubmVzc2VzOyB0aGUgdjQgY2hhbmdlIG9ubHkgbWFrZXMgdGhlIHJldmVy
c2FsIHVuY29uZGl0aW9uYWwuCgpJdCBhbHNvIHJlbWFpbnMgdGhlIHBhdGggdmFsaWRhdGVkIG9u
IGhhcmR3YXJlLCBhcyBub3RlZCBpbiB0aGUKY292ZXIgbGV0dGVyOiBhIDQ0LjEga0h6IHNvdXJj
ZSBpcyBkZXRlY3RlZCBhcyA0NC4xIGtIeiByYXRoZXIgdGhhbgpmYWxsaW5nIGJhY2sgdG8gdGhl
IDQ4IGtIeiBkZWZhdWx0LCBhbmQgNDQuMS80OCBrSHogc3dpdGNoZXMgYXJlCmZvbGxvd2VkLiBO
ZWl0aGVyIHdvdWxkIHdvcmsgaWYgdGhlIGV4dHJhY3Rpb24gcHJvZHVjZWQgZ2FyYmFnZS4KCj4g
aXMgdGhlcmUgYSB1c2UtYWZ0ZXItZnJlZSByaXNrIGR1cmluZyBkZXZpY2UgdW5iaW5kIGluIHRo
aXMgZHJpdmVyPwo+IFt2aWRlb19kZXZpY2UgZW1iZWRkZWQgaW4gZGV2bS1hbGxvY2F0ZWQgc3Ry
dWN0LCByZWxlYXNlIHNldCB0bwo+IHZpZGVvX2RldmljZV9yZWxlYXNlX2VtcHR5XQoKVGhpcyBv
bmUgbG9va3Mgc3RydWN0dXJhbGx5IHBsYXVzaWJsZSwgYnV0IGFzIHRoZSByZXBvcnQgaXRzZWxm
Cm5vdGVzIGl0IHByZWRhdGVzIHRoaXMgc2VyaWVzOiBpdCBjb25jZXJucyB0aGUgdmlkZW9fZGV2
aWNlIGxpZmV0aW1lCm9uIHRoZSBWNEwyIHNpZGUgYW5kIGlzIGluZGVwZW5kZW50IG9mIHRoZSBh
dWRpbyBzdXBwb3J0IGFkZGVkIGhlcmUKKHRoZSBhdWRpbyB0ZWFyZG93biBwYXRoIHdhcyBleGVy
Y2lzZWQgb24gdW5iaW5kIHdpdGggYW4gYWN0aXZlCnN0cmVhbSBkdXJpbmcgdjMgcmV2aWV3LCBz
ZWUgdGhlIHYzIHRocmVhZCkuIEFkZHJlc3NpbmcgaXQgd291bGQgYmUKYSBzZXBhcmF0ZSBmaXgg
Zm9yIHRoZSBleGlzdGluZyBkcml2ZXIgLS0gaGFwcHkgdG8gbGVhdmUgdGhhdCBjYWxsCnRvIERt
aXRyeS4KCklnb3IKCk9uIFR1ZSwgSnVsIDIxLCAyMDI2IGF0IDk6MDDigK9BTSA8c2FzaGlrby1i
b3RAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9u
ISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRl
cjoKPgo+IE5ldyBpc3N1ZXM6Cj4gLSBbSGlnaF0gVGhlIHVzZSBvZiBgc3dhYjMyKClgIHdoZW4g
ZXh0cmFjdGluZyB0aGUgMjAtYml0IEFDUiBOIGFuZCBDVFMgdmFsdWVzIGluY29ycmVjdGx5IHNj
cmFtYmxlcyB0aGVpciBiaXRzLiBCZWNhdXNlIHRoZSBwYWNrZXQgYnl0ZXMgYXJlIHN0b3JlZCBj
b250aWd1b3VzbHkgZnJvbSB0aGUgTFNCIHVwIChQQjAgaW4gWzc6MF0sIFBCMSBpbiBbMTU6OF0s
IGV0Yy4pLCByZXZlcnNpbmcgdGhlIDMyLWJpdCB3b3JkIHVzaW5nIGBzd2FiMzIoKWAgcGxhY2Vz
IHRoZSBMU0Igb2YgQ1RTIChQQjEpIGludG8gdGhlIE1TQiBvZiB0aGUgZXh0cmFjdGVkIHZhbHVl
LCBhbmQgdGhlIE1TQiBvZiBDVFMgKFBCMykgaW50byB0aGUgTFNCLiBNYXNraW5nIHRoaXMgcmVz
dWx0IHByb2R1Y2VzIGEgY29tcGxldGVseSBpbnZhbGlkIHNhbXBsZSByYXRlLgo+Cj4gUHJlLWV4
aXN0aW5nIGlzc3VlczoKPiAtIFtIaWdoXSBUaGUgVjRMMiBgdmlkZW9fZGV2aWNlYCBpcyBlbWJl
ZGRlZCBpbiBgc3RydWN0IHNucHNfaGRtaXJ4X2RldmAsIHdoaWNoIGlzIGFsbG9jYXRlZCB1c2lu
ZyBgZGV2bV9remFsbG9jYC4gVGhlIGRyaXZlciBzZXRzIGB2ZGV2LnJlbGVhc2UgPSB2aWRlb19k
ZXZpY2VfcmVsZWFzZV9lbXB0eWAuIElmIGEgdXNlciBzcGFjZSBwcm9jZXNzIGtlZXBzIHRoZSBg
L2Rldi92aWRlb1hgIGZpbGUgZGVzY3JpcHRvciBvcGVuIGR1cmluZyBkZXZpY2UgdW5iaW5kLCB0
aGUgYGRldm1gIHN1YnN5c3RlbSB3aWxsIGZyZWUgdGhlIGBzbnBzX2hkbWlyeF9kZXZgIG1lbW9y
eS4gV2hlbiB0aGUgcHJvY2VzcyBsYXRlciBjbG9zZXMgdGhlIGZpbGUgZGVzY3JpcHRvciwgdGhl
IFY0TDIgY29yZSB3aWxsIGFjY2VzcyB0aGUgZnJlZWQgYHZpZGVvX2RldmljZWAgdG8gZGVjcmVt
ZW50IGl0cyByZWZjb3VudCBhbmQgY2FsbCB0aGUgcmVsZWFzZSBjYWxsYmFjaywgY2F1c2luZyBh
IHVzZS1hZnRlci1mcmVlIHZ1bG5lcmFiaWxpdHkuCj4gLS0KPgo+IC0tLSBQYXRjaCBbMl06IFtQ
QVRDSCB2NCAyLzRdIG1lZGlhOiBzeW5vcHN5czogaGRtaXJ4OiBhZGQgSERNSSBhdWRpbyBjYXB0
dXJlIHN1cHBvcnQgLS0tCj4gY29tbWl0IDE5YzljNGRiMTM5NGYxZGMwZmMxY2I0NGQ1MTMxNzE5
OGE4N2IwNzgKPiBBdXRob3I6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4K
PiBEYXRlOiAgIFR1ZSBKdWwgMjEgMDY6NDE6MTMgMjAyNiArMDAwMAo+Cj4gICAgIG1lZGlhOiBz
eW5vcHN5czogaGRtaXJ4OiBhZGQgSERNSSBhdWRpbyBjYXB0dXJlIHN1cHBvcnQKPgo+IFRoaXMg
cGF0Y2ggYWRkcyBIRE1JIGF1ZGlvIGNhcHR1cmUgc3VwcG9ydCB0byB0aGUgU3lub3BzeXMgRGVz
aWduV2FyZSBIRE1JIFJYCj4gY29udHJvbGxlci4gSXQgZXh0cmFjdHMgdGhlIGVtYmVkZGVkIGF1
ZGlvIHN0cmVhbSBhbmQgZXhwb3NlcyBpdCBhcyBhbiBBTFNBCj4gY2FwdHVyZSBkZXZpY2Ugdmlh
IHRoZSBnZW5lcmljIGhkbWktY29kZWMuIEl0IGFsc28gaW50cm9kdWNlcyBhIHBlcmlvZGljCj4g
d29ya2VyIHRvIGtlZXAgdGhlIGxvY2FsIGF1ZGlvIHJlZmVyZW5jZSBjbG9jayBsb2NrZWQgdG8g
dGhlIHNvdXJjZS4KPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lu
b3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N5bm9w
c3lzL2hkbWlyeC9zbnBzX2hkbWlyeC5jCj4gPiBpbmRleCAyNWY4Y2EwZDZkOTQ2Li4xYjRhN2Zk
YTllMTk1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9o
ZG1pcngvc25wc19oZG1pcnguYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5v
cHN5cy9oZG1pcngvc25wc19oZG1pcnguYwo+Cj4gWyAuLi4gXQo+Cj4gPiArc3RhdGljIHUzMiBo
ZG1pcnhfYXVkaW9fZnMoc3RydWN0IHNucHNfaGRtaXJ4X2RldiAqaGRtaXJ4X2RldikKPiA+ICt7
Cj4gPiArICAgICB1NjQgdG1kc19jbGssIGZzX2F1ZGlvID0gMDsKPiA+ICsgICAgIHUzMiBhY3Jf
Y3RzLCBhY3JfbiwgdG1kc3FwY2xrX2ZyZXE7Cj4gPiArICAgICB1MzIgYWNyX3BiM18wLCBhY3Jf
cGI3XzQ7Cj4gPiArCj4gPiArICAgICB0bWRzcXBjbGtfZnJlcSA9IGhkbWlyeF9yZWFkbChoZG1p
cnhfZGV2LCBDTVVfVE1EU1FQQ0xLX0ZSRVEpOwo+ID4gKyAgICAgaGRtaXJ4X3JlYWRsKGhkbWly
eF9kZXYsIFBLVERFQ19BQ1JfUEgyXzEpOwo+ID4gKyAgICAgYWNyX3BiM18wID0gaGRtaXJ4X3Jl
YWRsKGhkbWlyeF9kZXYsIFBLVERFQ19BQ1JfUEIzXzApOwo+ID4gKyAgICAgYWNyX3BiN180ID0g
aGRtaXJ4X3JlYWRsKGhkbWlyeF9kZXYsIFBLVERFQ19BQ1JfUEI3XzQpOwo+ID4gKyAgICAgLyoK
PiA+ICsgICAgICAqIFRoZSBwYWNrZXQgZGVjb2RlciBzdG9yZXMgdGhlIEFDUiBzdWJwYWNrZXQg
Ynl0ZXMgd2l0aCBwYWNrZXQgYnl0ZQo+ID4gKyAgICAgICogMCBpbiByZWdpc3RlciBiaXRzIFs3
OjBdLCBzbyBieXRlLXJldmVyc2UgZWFjaCB3b3JkIHRvIGxpbmUgdGhlCj4gPiArICAgICAgKiBi
eXRlcyB1cDogQ1RTIGlzIHBhY2tldCBieXRlcyAxLTMgKFBLVERFQ19BQ1JfUEIzXzApIGFuZCBO
IGlzCj4gPiArICAgICAgKiBwYWNrZXQgYnl0ZXMgNC02IChQS1RERUNfQUNSX1BCN180KSwgMjAg
Yml0cyBlYWNoLiByZWFkbCgpCj4gPiArICAgICAgKiBhbHJlYWR5IGFic3RyYWN0cyB0aGUgYnVz
IGVuZGlhbm5lc3MsIHNvIHRoZSByZXZlcnNhbCBpcwo+ID4gKyAgICAgICogdW5jb25kaXRpb25h
bC4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgYWNyX2N0cyA9IHN3YWIzMihhY3JfcGIzXzApICYg
MHhmZmZmZjsKPiA+ICsgICAgIGFjcl9uID0gKHN3YWIzMihhY3JfcGI3XzQpICYgMHgwZmZmZmYw
MCkgPj4gODsKPgo+IFtTZXZlcml0eTogSGlnaF0KPiBEb2VzIHRoaXMgYnl0ZSByZXZlcnNhbCB1
c2luZyBzd2FiMzIoKSBpbmNvcnJlY3RseSBzY3JhbWJsZSB0aGUgTiBhbmQgQ1RTCj4gdmFsdWVz
Pwo+Cj4gQmVjYXVzZSB0aGUgcGFja2V0IGJ5dGVzIGFyZSBzdG9yZWQgY29udGlndW91c2x5IGZy
b20gdGhlIExTQiB1cCAod2l0aCBwYWNrZXQKPiBieXRlIDAgaW4gWzc6MF0sIHBhY2tldCBieXRl
IDEgaW4gWzE1OjhdLCBldGMuKSwgcmV2ZXJzaW5nIHRoZSAzMi1iaXQgd29yZAo+IHVzaW5nIHN3
YWIzMigpIHBsYWNlcyB0aGUgTFNCIG9mIENUUyAoZnJvbSBQQjEpIGludG8gdGhlIE1TQiBvZiB0
aGUgZXh0cmFjdGVkCj4gdmFsdWUsIGFuZCB0aGUgTVNCIG9mIENUUyAoZnJvbSBQQjMpIGludG8g
dGhlIExTQi4KPgo+IFdpbGwgdGhpcyByZXN1bHQgaW4gYW4gaW52YWxpZCBzYW1wbGUgcmF0ZSBi
ZWluZyBjYWxjdWxhdGVkLCBjYXVzaW5nIHRoZQo+IGRyaXZlcidzIGZhbGxiYWNrIGxvZ2ljIHRv
IHNpbGVudGx5IGlnbm9yZSB0aGUgYnJva2VuIHJhdGUgYW5kIHVzZSA0OGtIej8gVGhpcwo+IGNv
dWxkIGNhdXNlIGFueSBhdWRpbyBzdHJlYW0gbm90IG5hdGl2ZWx5IGF0IDQ4a0h6IHRvIGJlIHBs
YXllZCBiYWNrIGF0IHRoZQo+IHdyb25nIHJhdGUuCj4KPiA+ICsgICAgIHRtZHNfY2xrID0gdG1k
c3FwY2xrX2ZyZXEgKiA0ICogMTAwMFU7Cj4gPiArICAgICBpZiAoYWNyX2N0cyAhPSAwKSB7Cj4g
PiArICAgICAgICAgICAgIGZzX2F1ZGlvID0gZGl2X3U2NCgodG1kc19jbGsgKiBhY3JfbiksIGFj
cl9jdHMpOwo+Cj4gWyAuLi4gXQo+Cj4gPiBAQCAtMjc2NSw2ICszMDY0LDEwIEBAIHN0YXRpYyBp
bnQgaGRtaXJ4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFY0TDJfREVCVUdG
U19JRl9BVkksIGhkbWlyeF9kZXYsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGhkbWlyeF9kZWJ1Z2ZzX2lmX3JlYWQpOwo+ID4KPiA+ICsg
ICAgIHJldCA9IGhkbWlyeF9yZWdpc3Rlcl9hdWRpb19kZXZpY2UoaGRtaXJ4X2Rldik7Cj4gPiAr
ICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICBkZXZfd2FybihkZXYsICJmYWlsZWQgdG8g
cmVnaXN0ZXIgSERNSSBhdWRpbyBjb2RlYzogJWRcbiIsIHJldCk7Cj4gPiArCj4gPiAgICAgICBy
ZXR1cm4gMDsKPgo+IFtTZXZlcml0eTogSGlnaF0KPiBUaGlzIGlzbid0IGEgYnVnIGludHJvZHVj
ZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGlzIHRoZXJlIGEgdXNlLWFmdGVyLWZyZWUgcmlzawo+IGR1
cmluZyBkZXZpY2UgdW5iaW5kIGluIHRoaXMgZHJpdmVyPwo+Cj4gVGhlIFY0TDIgdmlkZW9fZGV2
aWNlIGlzIGVtYmVkZGVkIGluIHN0cnVjdCBzbnBzX2hkbWlyeF9kZXYsIHdoaWNoIGlzCj4gYWxs
b2NhdGVkIHVzaW5nIGRldm1fa3phbGxvYygpIGVhcmxpZXIgaW4gaGRtaXJ4X3Byb2JlKCkuIEhv
d2V2ZXIsIHRoZSBkcml2ZXIKPiBzZXRzIHRoZSByZWxlYXNlIGNhbGxiYWNrIHRvIHZpZGVvX2Rl
dmljZV9yZWxlYXNlX2VtcHR5IGluCj4gaGRtaXJ4X3JlZ2lzdGVyX3N0cmVhbV92ZGV2KCkuCj4K
PiBJZiBhIHVzZXIgc3BhY2UgcHJvY2VzcyBrZWVwcyB0aGUgL2Rldi92aWRlb1ggZmlsZSBkZXNj
cmlwdG9yIG9wZW4gZHVyaW5nCj4gZGV2aWNlIHVuYmluZCAoc3VjaCBhcyBkdXJpbmcgZHJpdmVy
IHVuYmluZCBvciBtb2R1bGUgcmVtb3ZhbCksIHRoZSBkZXZtCj4gc3Vic3lzdGVtIHdpbGwgZnJl
ZSB0aGUgc25wc19oZG1pcnhfZGV2IG1lbW9yeS4gV2hlbiB0aGUgcHJvY2VzcyBsYXRlciBjbG9z
ZXMKPiB0aGUgZmlsZSBkZXNjcmlwdG9yLCB3aWxsIHRoZSBWNEwyIGNvcmUgYWNjZXNzIHRoZSBm
cmVlZCB2aWRlb19kZXZpY2UgbWVtb3J5Cj4gdG8gZGVjcmVtZW50IGl0cyByZWZjb3VudCBhbmQg
Y2FsbCB0aGUgcmVsZWFzZSBjYWxsYmFjaz8KPgo+IC0tCj4gU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIxMDY0MTE1LjY0ODA5LTEtcm95
YWxuZXQwMjZAZ21haWwuY29tP3BhcnQ9MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
