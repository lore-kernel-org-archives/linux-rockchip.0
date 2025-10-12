Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8525DCCD187
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Oct 2025 11:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+s/myZQRoVMmuDeqLy+oYLMKSGtIxgM3ktp0kHLXe68=; b=Nv/vvj1M597Zwc
	k9DSLFBa3nebAKXEY+QUukSt+pvYtuVYEiHWl9ZTsgWmwQWurqSGz/p2vKda/7Jii3sjosfeSJLtb
	By/Yg8CpgTyzDBYRhc6Z1CJeT55kkaBWwAiSJDiL1TqUPCt90Vd5MPAhy7COJGH2F/vi5zs0RIY+s
	Cm/iYvrPNFucEwSDoY3Ri3MedUpFrch31c+IZUGW7epIBoCNJkrMh8hnQ5XhACsTOEG6NIAjVqmJx
	K7qjP35pep8xfdEQBmw0qJWyAFrKG8M+rpCobksi9bRDB1wRkeuAD9h7EaJ+rMLZ+RXMDvwijlf7X
	PMdFPU/5/PAYk5d6asfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7uG7-0000000BHEs-2zVF;
	Sun, 12 Oct 2025 11:29:03 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7uG4-0000000BHE2-330i
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Oct 2025 11:29:01 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-421851bca51so2190312f8f.1
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Oct 2025 04:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760268538; x=1760873338; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWKcq5BvBCbW0uN/aWPEZSUYGg1aTkDuwmWaEW+ABv0=;
        b=XDFg6wB6HZIrKwGxbNZsV+rjPe8mM/Z+EukO8aERI5jOmJjyuWw7AZz9OfbSi2R4KN
         4gjVT8pRL5U3JYVOe2AX5895GC38tYVn1Cs/Il3r9LjWEGIgZywmSe1bIgD+SRxWFQQm
         YmSz2efrnZlzbczr3Fuw2tZQTdI6mKbZvmyYiPAYxwVOVj74AOI5U0Ij/HA3Q30fe9FG
         UEZtmdjAa/YSBAwCjyumcNy/8Dlrh77OJHd8Ehj/0ep1Zf6/HWODpYMcyGpGXEW7SbnP
         wz9d8mUxxPJTC0VNyH4p12ZaqD9gcmKu97n8xHD8e7GczYMmF8oDxJCXpd/jycOhyKec
         EECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760268538; x=1760873338;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uWKcq5BvBCbW0uN/aWPEZSUYGg1aTkDuwmWaEW+ABv0=;
        b=sHzy3GB8jDjdvFeKc1RG6xE33hk27qsQVFaIrdLuZObmLjmO6qhPtFVdgf7ezT2EiP
         CeESzVwr+GrY9ZH8KB0AkTADN1GAHhbkYIPorqSxqEq9mquCJQf76TRXEdTlNOkFH4Bb
         4U2iJ9Mjilo6t+PWyhTuUdIC8lpzojy508oJcHBpquxhBjV4XS+R0m+2gZJar4pRdCiR
         VfX9ENUj4AcMT3ZlTOg80ULA7lP2FLwHWxymt/B2gKBM6NtfH1ceVrkCkF8q3Y6izWmI
         d13wCjOwSQwfFSAJdXHbO5WOF6MjjV2xA3SWseeqx10lt4tUucG8cu7f0TZhcuBpfIkz
         LUJw==
X-Forwarded-Encrypted: i=1; AJvYcCX7C5ep//F4iz4Ha7y03BhVJRGGfMjzzcySRj3bYihItUCHHv251bYO3I8BjeB0cJhv29tWd8yq0nFyWpBFBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YymuXqmBDChhZf3Xh/VXLN2qUeaQKDw+3p3xKiyG7tpPAJPYKhd
	hOLuVEy5zYXitsKpVemNRUXQoIuMUOTuQebyYBLgS3udN8bR9AdC0go/
X-Gm-Gg: ASbGncuaYysTiMJCisRUes+Mqjx+U1WpMdrs8T0rg0Gd06RBX88r8F6og4FvluqKhDA
	qMg3OyBSAJlq6PwHLdhkwLGZVxEIjsPzslZ9cBQlrya3PBQ896myMB65JwGukEWoK8QYtwEI74m
	RGBkHNnpuGwJz1wwYsBZ8GStDJ9MC/W8IW7SfN9mwC5rhGCjl0e/6hThxEUAGvofgHv6+oZgGpi
	vcSTAErbitsUKZ7C/31iXRtYdhGUlmo8cn2xRjCyTzo12ZqVcaH6AzryL7P99Bnb32OOn6UJRUU
	8yiXLTe9Bwn2s6NlK+dO80ysaRuWIPw6YuqftnqYhMVW8DZrOqnrBiBg0SbZdonakd6hTZzxlFZ
	AZO4KuiURndvbdHyAbEnVJ0lLVoXuOdQRTjkp6uV1mk0LQTObdyd6PmFpgdrRk6JNYQ==
X-Google-Smtp-Source: AGHT+IFIgmUyYZvJ+WTBCCmNwTjhLJVGwhLPHJ+WDG3InpnSBdGbHVHGfZIIZz0xV+9R6mVWBHO/bw==
X-Received: by 2002:a05:6000:2509:b0:426:da6d:ca6e with SMTP id ffacd0b85a97d-426da6dcaa6mr2164779f8f.58.1760268538276;
        Sun, 12 Oct 2025 04:28:58 -0700 (PDT)
Received: from smtpclient.apple ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce589b3dsm13194458f8f.24.2025.10.12.04.28.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Oct 2025 04:28:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH] drm/rockchip: vop2: use correct destination rectangle
 height check
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20251011130450.123444-1-alok.a.tiwari@oracle.com>
Date: Sun, 12 Oct 2025 15:28:39 +0400
Cc: michael.riesch@wolfvision.net,
 robh@kernel.org,
 s.hauer@pengutronix.de,
 dri-devel@lists.freedesktop.org,
 simona@ffwll.ch,
 airlied@gmail.com,
 tzimmermann@suse.de,
 mripard@kernel.org,
 hjc@rock-chips.com,
 heiko@sntech.de,
 andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Message-Id: <79AC74F5-9579-4A1A-B051-FD8731DCC524@gmail.com>
References: <20251011130450.123444-1-alok.a.tiwari@oracle.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_042900_774790_F7C04085 
X-CRM114-Status: GOOD (  13.82  )
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

PiBPbiAxMSBPY3QgMjAyNSwgYXQgNTowNOKAr3BtLCBBbG9rIFRpd2FyaSA8YWxvay5hLnRpd2Fy
aUBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiBUaGUgdm9wMl9wbGFuZV9hdG9taWNfY2hlY2soKSBm
dW5jdGlvbiBpbmNvcnJlY3RseSBjaGVja3MKPiBkcm1fcmVjdF93aWR0aChkZXN0KSB0d2ljZSBp
bnN0ZWFkIG9mIHZlcmlmeWluZyBib3RoIHdpZHRoIGFuZCBoZWlnaHQuCj4gRml4IHRoZSBzZWNv
bmQgY29uZGl0aW9uIHRvIHVzZSBkcm1fcmVjdF9oZWlnaHQoZGVzdCkgc28gdGhhdCBpbnZhbGlk
Cj4gZGVzdGluYXRpb24gcmVjdGFuZ2xlcyB3aXRoIGhlaWdodCA8IDQgYXJlIGNvcnJlY3RseSBy
ZWplY3RlZC4KPiAKPiBGaXhlczogNjA0YmU4NTU0N2NlICgiZHJtL3JvY2tjaGlwOiBBZGQgVk9Q
MiBkcml2ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEFsb2sgVGl3YXJpIDxhbG9rLmEudGl3YXJpQG9y
YWNsZS5jb20+Cj4gLS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMgfCAyICstCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMK
PiBpbmRleCBiNTA5MjdhODI0YjQuLjY5N2Y1NDc3N2EzMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gQEAgLTEwMzEsNyArMTAzMSw3IEBA
IHN0YXRpYyBpbnQgdm9wMl9wbGFuZV9hdG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxh
bmUsCj4gcmV0dXJuIGZvcm1hdDsKPiAKPiBpZiAoZHJtX3JlY3Rfd2lkdGgoc3JjKSA+PiAxNiA8
IDQgfHwgZHJtX3JlY3RfaGVpZ2h0KHNyYykgPj4gMTYgPCA0IHx8Cj4gLSAgICBkcm1fcmVjdF93
aWR0aChkZXN0KSA8IDQgfHwgZHJtX3JlY3Rfd2lkdGgoZGVzdCkgPCA0KSB7Cj4gKyAgICBkcm1f
cmVjdF93aWR0aChkZXN0KSA8IDQgfHwgZHJtX3JlY3RfaGVpZ2goZGVzdCkgPCA0KSB7CgpUeXBv
OiBzL2RybV9yZWN0X2hlaWdoL2RybV9yZWN0X2hlaWdodAoKQ2hyaXN0aWFuCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
