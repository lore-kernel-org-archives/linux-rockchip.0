Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE12C607526B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 21:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mcYxCSPt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Sj2yRlaH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=eZkkNOwi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zzfidjFeMKXhX5T8wv1BDBCNTfvt+StbgwOmM5aUHjc=; b=mcYxCSPtBvmDL49eGI887ErgJx
	9btF1syvC+pxGirOQf+ckg3OYp9dWBV624J22BVYaygxuWOAgNbymCyPuYKYjQCGp3bu51UmOb28E
	MnZeA7XpP2zGx4ELVJ1bU8LqbV4b07nRgofn+sThrplA+wiS+lhq50sb5+86zel26BR1FQUrLky9h
	7W7GAsTBpliCfEFaWfi0q3JZTcjKd7HgVLACDyfIt9GlgKZa2AQg2S/e9haO40bHRt0koWWIkIlSi
	Oel0W9zMS0UPKciVtgkgMAc5nyJb6fW18bXAzDJ29wq/OAh59ywhLOmcpycHM9iQD4YoD9kYTBWgZ
	Zgg0Lc1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0Z-000000076mm-0Smz;
	Wed, 04 Nov 2026 21:59:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0W-000000076jO-3MCB
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Nov 2026 21:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=T0H3EUcqnLUlnXch2HKXz39dCofeKBnFEr/JPTlHIHo=; b=Sj2yRlaHwgwaiFmMXxd8iCXzML
	iJWtTGFiPQRKBeQFl9+Te2smhMQQ0eNi4I7xgwNvUi/on/cRyijHGMIqk3Fv77KAvi8FDyVCKtMYV
	yxB9OrK5+hEewvgZplichC6Z1Ihf4JyNX3l6AQrIcxwR5nZhxHoFSJd64yR7ZHkaof5cLxgns/0KM
	Ml9Yj2DOB9uOWJ2elkgHKcz7tF4+9LqE9mq5t2oYPCCRE/K5iNd/gmIj+XKoC9YNXi1dAsx9GlSPy
	70FIlACFp70pEB2coT7jAvmeCgwxVOhpp+tIbMV+tgZGSXci0zrg/BPUimGi0me9K5/cESowdQtAP
	Q/TbjxIQ==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0R-00000002FBJ-2V6j
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 21:58:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a5177d78c7so10768935e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 13:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793829533; x=1794434333; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=T0H3EUcqnLUlnXch2HKXz39dCofeKBnFEr/JPTlHIHo=;
        b=eZkkNOwij4Qd9XTJp7txsgj7YYtMNQmv5DeJb7YGfsPndQFpB9v4sknJwxbH12B/wv
         Ma5Zu5goi4nivSg4uMeZbnS2iv7m9GqEzKsCEX3pm/rBiWE2/C1rAA+8CjfE9qkyX7xw
         29eTkIdThgPwK2aM/hFw8QHbut7nqfkZOlCFtnOcnp5tvjdh0WVw3Wob7fkTU7rlLJ6K
         Gbau5CNWgDB82BJvs+sUkBxt2eCbSYj1JMm9G+229wll5X6etVI9/lPCLdc+wpDOq8kC
         YvOU/WHrxBCK8bRtikY9qGAgIJF2IVIpQ2kVGpPk8SjQyGeNEseWFT4z4wAcc+w6XcZJ
         YCXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793829533; x=1794434333;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=T0H3EUcqnLUlnXch2HKXz39dCofeKBnFEr/JPTlHIHo=;
        b=pC7pdVREZB//Cy7OZbgT5oLbvcXzlSPP6Dz9U2wd7TyXQIjNYYXOk/+ehNR/IhRzOw
         DEm9eZQ89vlDHZ9xH0rgFwMWzJD70SODCDi4smpHkVwJIVHex0FhO/zqjWrKqlFKHFmF
         xqEQOaGJpUhowAQX2qV3N0CxV2qjOZ84pR9bw6Tucf4BLJ4x0B6P9BZMJsM1ge6vzWn8
         r/KGB+9pV4n+EVEuL8w5c/ONdsBBOtslGcrtOVIPOS2VUa3RiwNV1qGYzzP8potsrESx
         HFkP38Q7xheaN/Blr9GxhGO+QmP4hmSHNaA2Xav07F6XZ93Ry49hevjtvOREqVFkfLpw
         n3uw==
X-Forwarded-Encrypted: i=1; AKwUvBxhReAwnwMjkOhauPJ9G/uJsNZ99BfhoBQQPAog/Ugk49MDZ8ihOxt1bP/SOa88x8vhhca1TTFtjJw38ZCN7g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8/c8d/XTZYw0AWOWmBvjRTNWU02Ihx8IVl6wOm782IGmHBHO5i
	mgaQ4iBr2/ZlNXZ34ZCRFO6CDg948YKEGMUi4X7qGgzVynRjrXPu9FLU
X-Gm-Gg: AYBFou05KxcZfMRzPqzQqM9ZYrlUGrsHUrbLGXQIoo/hRdSHx9ZEtTzKS9Yvbe9bs21
	3ALNrTMgb5jstSNcTCWOioUZSalgdFuJqBKoXiiw8nX1DuOJv9cDjZFjjl3BUdW9NG808P+3/zL
	gbgC5yF4XRiqWHY+pL5YC6yc4dsCXPO5u3Kar/yKtjZewEdIelCVTU+pwgje7ufXGURXmfnIGFm
	O4A2oKaBPhzf8azBoPAZGC1+AZLNEUGhO0WZuL/KPb382B399+8UK6rRsC+8Kb7eZKrPD8SRuqZ
	qo2EnqsKmG0VzgupLbujLm7ML8UIL9j/5gGeCCYDLQwuIipzBomoOZUzDIqaZMMwwLDWxdYWR7O
	+LuK3lO6sYdoOT0NOiUkWLn4IJYq9jhjwjaylOnRqc2YYEPRiki8RtlvqyHbal7P1rMgNgPeFVu
	HmjcGMVUBJLW6H+nLO1zjJKjT/sf76/4cc67VP5P8vFr9jPdZ4wiIOiMhQotY8JDHIbJ9Y7Qki2
	7RcHfIt8KN/j+IVyYmgi32n8ZzrEwgQGweuDaTaPDN+oBuWiv8/9d3vRxkgqB6DZkSYj2nyZfQQ
	UVJghN1avfHc/eNuacftDSqKTS4bdhwbeM2kK6VkOX/yaFUXw0n9dDV96XBpqXk0c+7QSIBbYo9
	JlkNscmVc7r+EudBpfOUn5tUAs0YKVIeEymoS9wNX9N37wQ==
X-Received: by 2002:a05:600c:c107:b0:4b1:2026:6b41 with SMTP id 5b1f17b1804b1-4b1202673f8mr162862935e9.30.1793829533381;
        Wed, 04 Nov 2026 13:58:53 -0800 (PST)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56f5e65b0sm15526735e9.11.2026.11.04.13.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 13:58:52 -0800 (PST)
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
Subject: [PATCH v5 1/2] dt-bindings: PCI: rockchip,rk3399-pcie: Add PERST# inactive delay properties
Date: Wed,  4 Nov 2026 21:58:46 +0000
Message-ID: <20261104215848.2087944-2-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261104215848.2087944-1-ehbello@gmail.com>
References: <20261104215848.2087944-1-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_215855_664716_1F8B4F86 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
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

VGhlIGRyaXZlciBob2xkcyBQRVJTVCMgYXNzZXJ0ZWQgZm9yIFRfUFZQRVJMICgxMDAgbXMpIGJl
Zm9yZSByZWxlYXNpbmcgaXQuCkVuZHBvaW50cyBkaXNhZ3JlZSBhYm91dCB3aGF0IHRoZXkgd2Fu
dCB0aGVyZTogc29tZSBuZWVkIGxvbmdlciB0aGFuIHRoZQpkZWZhdWx0IHRvIHNldHRsZSwgd2hp
bGUgb3RoZXJzIHN0b3AgYW5zd2VyaW5nIGNvbmZpZ3VyYXRpb24gcmVhZHMgd2hlbiB0aGUKcmVz
ZXQgcHVsc2UgaXMgc3RyZXRjaGVkIHRoYXQgZmFyLCBiZWNhdXNlIFBFUlNUIyBzdGF5cyBhc3Nl
cnRlZCBmb3IgdGhlCndob2xlIHdhaXQuCgpEZXNjcmliZSB0d28gcHJvcGVydGllcyBzbyBhIGJv
YXJkIGNhbiBzdGF0ZSB3aGF0IGl0cyBlbmRwb2ludCBuZWVkcywgbmFtZWQKYWZ0ZXIgdGhlIG9u
ZXMgdGhlIFJvY2tjaGlwIHZlbmRvciBkcml2ZXIgYWxyZWFkeSB1c2VzIGZvciB0aGUgZHdjLWJh
c2VkCmNvbnRyb2xsZXJzOgoKICByb2NrY2hpcCxwZXJzdC1pbmFjdGl2ZS1tcyAgICAgIC0gdGhl
IGRlbGF5IHVzZWQgYXQgcHJvYmUKICByb2NrY2hpcCxzMnItcGVyc3QtaW5hY3RpdmUtbXMgIC0g
dGhlIGRlbGF5IHVzZWQgd2hlbiByZXN1bWluZwoKQm90aCBhcmUgb3B0aW9uYWwgYW5kIHRoZSBk
ZWZhdWx0cyBwcmVzZXJ2ZSB0aGUgY3VycmVudCBiZWhhdmlvdXIuCgpTaWduZWQtb2ZmLWJ5OiBF
bnJpcXVlIEhlcm7DoW5kZXogQmVsbG8gPGVoYmVsbG9AZ21haWwuY29tPgotLS0KIC4uLi9iaW5k
aW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBjaWUueWFtbCAgICAgICAgfCAxNSArKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcCxyazMzOTktcGNpZS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcCxyazMz
OTktcGNpZS55YW1sCmluZGV4IDcyMGE1ZjkuLjdhYzkxNWMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBjaWUueWFtbAor
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLHJrMzM5
OS1wY2llLnlhbWwKQEAgLTQwLDYgKzQwLDIxIEBAIHByb3BlcnRpZXM6CiAgICAgbWF4SXRlbXM6
IDEKICAgICBkZXNjcmlwdGlvbjogcHJlLXJlc2V0IEdQSU8KIAorICByb2NrY2hpcCxwZXJzdC1p
bmFjdGl2ZS1tczoKKyAgICBkZWZhdWx0OiAxMDAKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIFRp
bWUgUEVSU1QjIGlzIGhlbGQgYXNzZXJ0ZWQgYmVmb3JlIGl0IGlzIHJlbGVhc2VkLCB3aGljaCBp
cyBhbHNvIHRoZQorICAgICAgd2lkdGggb2YgdGhlIHJlc2V0IHB1bHNlLiBUaGUgZGVmYXVsdCBt
ZWV0cyBUX1BWUEVSTCBmb3IgYSBzbG90IHRoYXQKKyAgICAgIGlzIHBvd2VyZWQgYXQgdGhlIG1v
bWVudCBQRVJTVCMgaXMgYXNzZXJ0ZWQuIFNvbWUgZW5kcG9pbnRzIG5lZWQgbW9yZQorICAgICAg
c2V0dGxpbmcgdGltZSB0aGFuIHRoYXQsIHdoaWxlIG90aGVycyBzdG9wIHJlc3BvbmRpbmcgd2hl
biB0aGUgcHVsc2UKKyAgICAgIGlzIHRoYXQgbG9uZy4gQSB2YWx1ZSBvZiAwIHNlbGVjdHMgdGhl
IDEwMCB1cyBtaW5pbXVtIHRoZSBQQ0kgRXhwcmVzcworICAgICAgQ0VNIHNwZWNpZmljYXRpb24g
c2V0cyBmb3IgdGhlIHB1bHNlLgorCisgIHJvY2tjaGlwLHMyci1wZXJzdC1pbmFjdGl2ZS1tczoK
KyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIFRoZSBzYW1lIHRpbWUsIGFwcGxpZWQgd2hlbiByZXN1
bWluZyBmcm9tIHN5c3RlbSBzdXNwZW5kLiBEZWZhdWx0cyB0bworICAgICAgdGhlIHZhbHVlIG9m
IHJvY2tjaGlwLHBlcnN0LWluYWN0aXZlLW1zLgorCiAgIHZwY2llMTJ2LXN1cHBseToKICAgICBk
ZXNjcmlwdGlvbjogVGhlIDEydiByZWd1bGF0b3IgdG8gdXNlIGZvciBQQ0llLgogCi0tIAoyLjU2
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
