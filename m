Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2A7607526B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 21:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Zi2uoH8b;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XdXvz6rH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mrQ1vRTEH5En1GA3uUoXTEpL6FAnwxIrK8T0UTx5aEU=; b=Zi2uoH8bVo7Z1TtqyQRCeaim85
	jPFL+4SbCpQ7bVZ1V3HJsXMewN2GZ8PTKRg46KhZv4b+UfDr+k3F4dF1zF3w9AOILOCYNgxKQX0e8
	UPpFJdx86va5kG7VuJDBx5yNKwYjYvcCb7n69Ix+vv7blWUq92xURQBtLH9csyEZGHS7Zp4N2XVH7
	C5GNdWzwkJVqKxmcjRpZD22fnVsd/3eGBkNTMScbFhvtjjjEMcvoSNqOmYIttw4g1U0BfWo3FaC1z
	VLN/5UrUsTGoDbiUhCUuJw5YCVTCHuurUANfQMF/GTkzvY0QwtFxsObhIzJCUUYYxcXcnvV4iYQhM
	+xJJP8/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0W-000000076jr-3JRc;
	Wed, 04 Nov 2026 21:59:00 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0T-000000076go-06wS
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 21:58:59 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a2167bd087so10007395e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 13:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793829535; x=1794434335; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4G69hUeaYVdLPSM1kzRF/+eQpXIfqCXeSZLLSkxOSAI=;
        b=XdXvz6rH5U6RsDurf+pA/VCC+M1R6ICaII5jYBvVGZw+/XRY2mOjfkM1hTw89DsohA
         BgZchxTBsPu2DUHuB0Qkck3p05Zh1+t0Lxhszyda82T3/6rD28X+YulTk3mcffgnvFwN
         iv6nUg8bFkJlIhbAnQLDvcRSnvj/PbMAuYfLZGPaKHcrP9oGmtYbyX9IZWHAfvZIPg1j
         QCIojxa3BSxyJgsHi/SsLpmq6uabVLg0aCra+GLGoctAqWzS9HmY04iOu3WjlDn1fxr+
         Rp/oxUsqC2xU77f/GbsJ1TijhqhtV8HxCvwGF5iQAWIIEeB5ykck2ITh4+IXMEWY4drQ
         YVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793829535; x=1794434335;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4G69hUeaYVdLPSM1kzRF/+eQpXIfqCXeSZLLSkxOSAI=;
        b=HO1tzZBhW+Nm7LV6cz0gz0tr8x67c4ale5mZahwicd77LPKzlVh7BzZy3qFIT1AyQj
         fNp28kh/iu2jk89rnkJ4EgqKBy/zzi14aV0ma3c+pCOvikV8cYg88drNkfhVhim7aDvn
         8OfoXkSfXuK6uaerN6xXrKvqkoTX9072i4ZyEVFfVqse0omiAf0TYnQ0mq8Bg43GC8nJ
         5qcXAMqJf4AwzzNuV5SE3mh6Nq8zHNPamiGoTxjfmjy3ZBIpv4HW3kX45vfnPftu1A28
         BgWTQooOkrOHzUdOKXQmmyF12CNPtLW4upy9uk1QsGZOEu9WS2lsBcNY+MJlPXA0RPg3
         Gxug==
X-Forwarded-Encrypted: i=1; AKwUvBzjMxBchJ6MoHcCbWgENyG+USFvN5Kwcm4718gtNfOHuOVpyH/540AiF9NAm6SDb0gSLsHM/tpknuIEDbKy8A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9JnFL6RwXEt1NvQg9aOwJOlrr1WzgIy1EQhvb7SjCCyZglaNCO
	d6nU0kwuQ93aKuv9UMNnUR+A70yXEW+nrhe1mTToNr02H7STvCZT9Nvs
X-Gm-Gg: AYBFou1hMyiXhSHW8ByRGfObENKOX21UpeTBoPohFloPuWMJp3Qcc1PqnEcpKqpbd4k
	GWkdUKLoXZ3ecW+GY6CqHM/vUUYCC5dq7iak2yI70j3VhP13DIdfrjUmANc+GysKh/s0ETIdbry
	O7p3yEE0oe/cHnHvkxhI/qlztUpxymFfIIuzd09EH1P+l/N/Oal/07V0RlKBsS555cB9WHvNbxP
	B09MyVx85qyphs3XBmVYMuaFTE1n0rSv/eh7QwKpmygF5JrsxF9Ra2GdcHo1uPpWKSz7s4/zWMm
	hlrC4hzPZy+mHFDpGhfhFOKhq85XLHHAflb6It8zOzTg00o3Wwi0XlY0x5YzVi3Akbn2xaLs7dx
	uznzuUg4Z4JDvja2ldYzX29K9Kj99DgVDLxKgwLGu/5E3eI0DM6WSLvuhhP/aRadEiXcyLzCJPE
	2a3RfWnJ5OAxkQasA5BvuA5UB/6CSF9Q12ZeQR+zR3Mn64aFCqs7LfZ3dlsogaedlMYq5YeXPk+
	YZp+phQcxdf664PUSPn/zoDfJQfFMeloJzrWZyBM5jEqNUyLD2xBYHQ2nDM5TAxQnEBYkG/5QAY
	kYFrFxwt1Ik0vkF7QUbvM/HOGGf9rLtEoeoicSYQkscksSV7/U+fS5TuzRVDRObXJC5YOoVMR+P
	SxMN4BI+nFZotMzNOzy7C4Yy9KrgvY81L3ARTEvsCIfLo57zkM1Vhw3fznibD3E21TPM=
X-Received: by 2002:a05:600c:8b04:b0:4a1:fb01:13 with SMTP id 5b1f17b1804b1-4ac17a3683bmr393088445e9.18.1793829535234;
        Wed, 04 Nov 2026 13:58:55 -0800 (PST)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56f5e65b0sm15526735e9.11.2026.11.04.13.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 13:58:54 -0800 (PST)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	iav@iav.lv,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
Subject: [PATCH v5 2/2] PCI: rockchip-host: Make the PERST# inactive delay configurable
Date: Wed,  4 Nov 2026 21:58:47 +0000
Message-ID: <20261104215848.2087944-3-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261104215848.2087944-1-ehbello@gmail.com>
References: <20261104215848.2087944-1-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_135857_099580_EDAF2CD0 
X-CRM114-Status: GOOD (  21.80  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

cm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9ydCgpIHdhaXRzIFRfUFZQRVJMLCAxMDAgbXMsIGJl
Zm9yZSByZWxlYXNpbmcKUEVSU1QjLiBUaGUgR1BJTyBpcyBhY3F1aXJlZCB3aXRoIEdQSU9EX09V
VF9MT1cgZWFybHkgaW4gcHJvYmUsIHNvIFBFUlNUIwppcyBhbHJlYWR5IGFzc2VydGVkIHdoZW4g
dGhhdCB3YWl0IHN0YXJ0cywgYW5kIHRoZSB3YWl0IHRoZXJlZm9yZSBzZXRzIHRoZQpyZXNldCBw
dWxzZSB3aWR0aCBhcyB3ZWxsLgoKVGhhdCBzdWl0cyBhIGJvYXJkIHdoaWNoIHBvd2VycyB0aGUg
c2xvdCBhdCB0aGUgbW9tZW50IGl0IGFzc2VydHMgUEVSU1QjLApidXQgZW5kcG9pbnRzIGRvIG5v
dCBhZ3JlZSBvbiB3aGF0IHRoZXkgd2FudC4gT24gYSBST0NLIFBpIDRDIGNhcnJ5aW5nIGEKSk1C
NTg1IFNBVEEgY29udHJvbGxlciwgYSBwdWxzZSB0aGF0IGxvbmcgc3RvcHMgdGhlIGVuZHBvaW50
IGFuc3dlcmluZwpjb25maWd1cmF0aW9uIHJlYWRzIGF0IGFsbC4gTWVhc3VyZWQgb24gdGhhdCBi
b2FyZCB3aXRoIGEgc2luZ2xlIGtlcm5lbCBhbmQKdHdvIG1vZHVsZSBwYXJhbWV0ZXJzLCBvbmUg
c2xlZXBpbmcgYmVmb3JlIHRoZSBHUElPIGlzIGFjcXVpcmVkIGFuZCBvbmUgaW4KcGxhY2Ugb2Yg
dGhlIHdhaXQsIHRpbWluZyB0aGUgcHVsc2Ugd2l0aCBhIGt0aW1lIGRlbHRhIGFjcm9zcyB0aGUg
dHdvCmdwaW9kX3NldF92YWx1ZSgpIGNhbGxzOgoKICBwcmUgKG1zKSAgcG9zdCAobXMpICBwdWxz
ZSAgICAgIHRyaWFscyAgZW51bWVyYXRlZAogIDAgICAgICAgICAwICAgICAgICAgIDEtMTEgbXMg
ICAgNSAgICAgICA1CiAgMCAgICAgICAgIDEwICAgICAgICAgfjE4IG1zICAgICAzICAgICAgIDMK
ICAwICAgICAgICAgMTUgICAgICAgICAyNC00NyBtcyAgIDQgICAgICAgNAogIDAgICAgICAgICAy
MCAgICAgICAgIH4yOCBtcyAgICAgMyAgICAgICAxCiAgMCAgICAgICAgIDEwMCAgICAgICAgfjEw
OCBtcyAgICA0ICAgICAgIDAKICAyMDAgICAgICAgMCAgICAgICAgICA2LTExIG1zICAgIDUgICAg
ICAgNQogIDIwMCAgICAgICAxMDAgICAgICAgIH4xMDggbXMgICAgMSAgICAgICAwCgpEZWxheWlu
ZyB0aGUgYXNzZXJ0aW9uIGNoYW5nZXMgbm90aGluZywgd2hpbGUgd2lkZW5pbmcgdGhlIHB1bHNl
IGRlY2lkZXMKZXZlcnl0aGluZy4gVGhlIHNsb3Qgc3VwcGx5IG9uIHRoaXMgYm9hcmQgaXMgcmVn
dWxhdG9yLWFsd2F5cy1vbiwgc28gcG93ZXIKaGFkIGJlZW4gdmFsaWQgZm9yIHNlY29uZHMgaW4g
ZXZlcnkgcm93IGFib3ZlLCB0aGUgZmFpbGluZyBvbmVzIGluY2x1ZGVkLgoKUmF0aGVyIHRoYW4g
Y2hhbmdlIHRoZSBkZWxheSBmb3IgZXZlcnkgYm9hcmQsIHJlYWQgaXQgZnJvbSB0aGUgZGV2aWNl
IHRyZWUsCnJldXNpbmcgdGhlIHByb3BlcnR5IG5hbWVzIHRoZSBSb2NrY2hpcCB2ZW5kb3IgZHJp
dmVyIGFscmVhZHkgY2FycmllcyBmb3IKdGhlIGR3Yy1iYXNlZCBjb250cm9sbGVycyBpbiBwY2ll
LWR3LXJvY2tjaGlwLmMuIFRoZSBkZWZhdWx0IGlzIHVuY2hhbmdlZCwKc28gYSBib2FyZCB0aGF0
IGRlc2NyaWJlcyBub3RoaW5nIGJlaGF2ZXMgZXhhY3RseSBhcyBiZWZvcmUuIFdoYXRldmVyIHRo
ZQpib2FyZCBhc2tzIGZvciwgUEVSU1QjIHN0YXlzIGFzc2VydGVkIGZvciBhdCBsZWFzdCB0aGUg
MTAwIHVzIG1pbmltdW0gdGhlCnNwZWNpZmljYXRpb24gc2V0cywgd2hpY2ggY292ZXJzIFRfUEVS
U1QgYW5kIFRfUEVSU1QtQ0xLLgoKU3VnZ2VzdGVkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzk1YWVlY2Mw
LTI3OTQtNGNjNi1hNjM1LTVjMDQyYWZjMTQwNUByb2NrLWNoaXBzLmNvbS8KU2lnbmVkLW9mZi1i
eTogRW5yaXF1ZSBIZXJuw6FuZGV6IEJlbGxvIDxlaGJlbGxvQGdtYWlsLmNvbT4KLS0tCiBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMjYgKysrKysrKysrKysr
KysrKystLS0tCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICAgIHwg
IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5j
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwppbmRleCA1YjA3
MWJkLi41Zjc4Y2Q2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtaG9zdC5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1o
b3N0LmMKQEAgLTI0LDYgKzI0LDcgQEAKICNpbmNsdWRlIDxsaW51eC9vZl9wY2kuaD4KICNpbmNs
dWRlIDxsaW51eC9waHkvcGh5Lmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
CisjaW5jbHVkZSA8bGludXgvcHJvcGVydHkuaD4KICNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3Iv
Y29uc3VtZXIuaD4KIAogI2luY2x1ZGUgIi4uL3BjaS5oIgpAQCAtMjgwLDggKzI4MSwxMCBAQCBz
dGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX3NldF9wb3dlcl9saW1pdChzdHJ1Y3Qgcm9ja2NoaXBf
cGNpZSAqcm9ja2NoaXApCiAvKioKICAqIHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQgLSBJ
bml0aWFsaXplIGhhcmR3YXJlCiAgKiBAcm9ja2NoaXA6IFBDSWUgcG9ydCBpbmZvcm1hdGlvbgor
ICogQHBlcnN0X2luYWN0aXZlX21zOiBob3cgbG9uZyB0byBob2xkIFBFUlNUIyBhc3NlcnRlZCBi
ZWZvcmUgcmVsZWFzaW5nIGl0CiAgKi8KLXN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9ob3N0X2lu
aXRfcG9ydChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCitzdGF0aWMgaW50IHJvY2tj
aGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwLAor
CQkJCQl1MzIgcGVyc3RfaW5hY3RpdmVfbXMpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gcm9j
a2NoaXAtPmRldjsKIAlpbnQgZXJyLCBpID0gTUFYX0xBTkVfTlVNOwpAQCAtMzE1LDcgKzMxOCwx
MiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnJvY2tjaGlwKQogCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSUVf
Q0xJRU5UX0xJTktfVFJBSU5fRU5BQkxFLAogCQkJICAgIFBDSUVfQ0xJRU5UX0NPTkZJRyk7CiAK
LQltc2xlZXAoUENJRV9UX1BWUEVSTF9NUyk7CisJLyoKKwkgKiBQRVJTVCMgaGFzIGJlZW4gYXNz
ZXJ0ZWQgc2luY2UgdGhlIEdQSU8gd2FzIGFjcXVpcmVkLCBzbyB0aGlzIHdhaXQKKwkgKiBpcyBh
bHNvIHRoZSByZXNldCBwdWxzZSB3aWR0aC4gTmV2ZXIgZ28gYmVsb3cgdGhlIHNwZWNpZmljYXRp
b24KKwkgKiBtaW5pbXVtLCB3aGljaCBjb3ZlcnMgYm90aCBUX1BFUlNUIGFuZCBUX1BFUlNULUNM
SywgZWFjaCAxMDAgdXMuCisJICovCisJZnNsZWVwKG1heChwZXJzdF9pbmFjdGl2ZV9tcyAqIFVT
RUNfUEVSX01TRUMsIFBDSUVfVF9QRVJTVF9DTEtfVVMpKTsKIAlncGlvZF9zZXRfdmFsdWVfY2Fu
c2xlZXAocm9ja2NoaXAtPnBlcnN0X2dwaW8sIDEpOwogCiAJbXNsZWVwKFBDSUVfUkVTRVRfQ09O
RklHX1dBSVRfTVMpOwpAQCAtNTg3LDYgKzU5NSwxNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3Bj
aWVfcGFyc2VfaG9zdF9kdChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCiAJaWYgKElT
X0VSUihyb2NrY2hpcC0+dnBjaWUwdjkpKQogCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+dnBj
aWUwdjkpOwogCisJaWYgKGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJyb2NrY2hpcCxw
ZXJzdC1pbmFjdGl2ZS1tcyIsCisJCQkJICAgICAmcm9ja2NoaXAtPnBlcnN0X2luYWN0aXZlX21z
KSkKKwkJcm9ja2NoaXAtPnBlcnN0X2luYWN0aXZlX21zID0gUENJRV9UX1BWUEVSTF9NUzsKKwor
CWlmIChkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsczJyLXBlcnN0LWlu
YWN0aXZlLW1zIiwKKwkJCQkgICAgICZyb2NrY2hpcC0+czJyX3BlcnN0X2luYWN0aXZlX21zKSkK
KwkJcm9ja2NoaXAtPnMycl9wZXJzdF9pbmFjdGl2ZV9tcyA9IHJvY2tjaGlwLT5wZXJzdF9pbmFj
dGl2ZV9tczsKKwogCXJldHVybiAwOwogfQogCkBAIC04ODEsNyArODk3LDggQEAgc3RhdGljIGlu
dCByb2NrY2hpcF9wY2llX3Jlc3VtZV9ub2lycShzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJaWYgKGVy
cikKIAkJZ290byBlcnJfZGlzYWJsZV8wdjk7CiAKLQllcnIgPSByb2NrY2hpcF9wY2llX2hvc3Rf
aW5pdF9wb3J0KHJvY2tjaGlwKTsKKwllcnIgPSByb2NrY2hpcF9wY2llX2hvc3RfaW5pdF9wb3J0
KHJvY2tjaGlwLAorCQkJCQkgICByb2NrY2hpcC0+czJyX3BlcnN0X2luYWN0aXZlX21zKTsKIAlp
ZiAoZXJyKQogCQlnb3RvIGVycl9wY2llX3Jlc3VtZTsKIApAQCAtOTM4LDcgKzk1NSw4IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogCQlnb3RvIGVycl9zZXRfdnBjaWU7CiAJfQogCi0JZXJyID0gcm9ja2NoaXBfcGNpZV9ob3N0
X2luaXRfcG9ydChyb2NrY2hpcCk7CisJZXJyID0gcm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9y
dChyb2NrY2hpcCwKKwkJCQkJICAgcm9ja2NoaXAtPnBlcnN0X2luYWN0aXZlX21zKTsKIAlpZiAo
ZXJyKQogCQlnb3RvIGVycl92cGNpZTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLmggYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAuaAppbmRleCBiNWRhMTU2Li5jNzczZjc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAorKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAuaApAQCAtMzE1LDYgKzMxNSw4IEBAIHN0cnVjdCByb2NrY2hpcF9wY2llIHsKIAlz
dHJ1Y3QJcmVndWxhdG9yICp2cGNpZTF2ODsgLyogMS44ViBwb3dlciBzdXBwbHkgKi8KIAlzdHJ1
Y3QJcmVndWxhdG9yICp2cGNpZTB2OTsgLyogMC45ViBwb3dlciBzdXBwbHkgKi8KIAlzdHJ1Y3QJ
Z3Bpb19kZXNjICpwZXJzdF9ncGlvOworCXUzMglwZXJzdF9pbmFjdGl2ZV9tczsKKwl1MzIJczJy
X3BlcnN0X2luYWN0aXZlX21zOwogCXUzMglsYW5lczsKIAl1OCAgICAgIGxhbmVzX21hcDsKIAlp
bnQJbGlua19nZW47Ci0tIAoyLjU2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
