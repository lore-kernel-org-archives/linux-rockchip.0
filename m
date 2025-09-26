Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E04CAC5AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Sep 2025 14:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o1YvuM/tIZfflK3l/zG2uleWoQ29DHpskg6XbMpkRZM=; b=nKxRxd/l8p7mAW
	iHR7VNh09k1YOULxflXXQmOr8h+tBFdvKd53VUAyuVujjwMModRyXXotMFr7P/R1AypdlhtKoxuBg
	w5SJV22iZd3CgeyUhGxwvmE9Cck1Nu89R12Yu7SayThkjz7SzY5Kg0oXVmWPx4+MdtUl5p5eomsbE
	SmRZQzqVral5MBAO2u21KFq/1bK+NfCvEW4bWT5c59G/plx45JpPouulwTfTU/OmfAUknXbaugcVT
	zoqfsofG1iaZ/0LA+vTtUoHqY2FoOGLJDILTXNjcUxz88Ew05reayV1jZ3QFVJhyiah7uWTVSbnT7
	RWSQ9NmAQLVn9zh1K19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v296S-00000001pLO-2MMS;
	Fri, 26 Sep 2025 14:07:16 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v296Q-00000001pJ4-2Dl6
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Sep 2025 14:07:15 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4dcc9cebfdfso374251cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Sep 2025 07:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1758895632; x=1759500432; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=StcU61O7Bduu+n3ctrkb4ORbTcaBshXBtfrgjHAaeAE=;
        b=ZQKqzBIcFcrdWJH9jhJo6WjTo4lVHi2LyX4/xFbde+0Dp1WaEBXw18pKqHuvxuXyNP
         uInf1Lj+prsH+GD8SPA9LlyZ/wyBWFxaZvOSQYn75ZqEOrSFhAxczwcWhdodbqpbW5IC
         wxE2ZeTYj5iufL1SD0Ow/DqRAlpRNGaE8PKPsMAypEfExSZHEXnGrtrr7HoDLmVPMrzB
         7SjRgokp5uX5peO6v9C4n37wMIZZbldUieVtBJy1NlslVvhuyEbb5L1nz8GAvjW1O9Kj
         KWx4ptb7wLxgtuk8p8liLZtw0nO1B6dEbMLXtLezSDrKtOc3qYGypcWluQLskMJeKosw
         0TWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758895632; x=1759500432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=StcU61O7Bduu+n3ctrkb4ORbTcaBshXBtfrgjHAaeAE=;
        b=qQzemclghJOE/BwmLiicYmz54v0p8NCZnlSSfwRWWaZx9+ZYsZntWHcfYv6WscxkmG
         YLqBc7w0jWDsgzvX/PWLRRzbsoAVx60dbI1znh3lEn1W+ilTRj5pIsYajZLWJIqVLEBn
         j7XqMylijGvKODNq0xr0Nr5NgCqqmv0oUAb2aMw6T6vtAegfI/Wb0Npy5xAq0kBxiHtm
         /sv/bcHisEIkrLIHtKLthHaYlFalyJkmZlEJ5iRYTbbCknPlY+TCHlK7DeFiUc/75+tH
         rB4pN8UMo4BYzRzmCyzOGbeDYwNd+u7e8WBb9R7lhj3Hfl6g0T/ryT6RH/X1QvBhsNcr
         eSzw==
X-Forwarded-Encrypted: i=1; AJvYcCX974ANnPAbTyqtWO70uOCVFd9QfbU9wE1wGpJDHDVt6Pk9cAvAk/+bI8qHwODIZW7FWwcV7TEcHAp/FPLlPw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqwATMQk1V03mYF08msi5ZxyF86QA3tT+JfyO0k/Nxa/QIa58F
	diFFhyk+BO0+XlXmPv0kMGqj8X79JTKAVn0FiiMr7TFHtU9BC8qU3mdIc1+cgX07/x9etIwHxfS
	GtCjZu/LiOENMTj31xki+DBmA55CkrFS0JGSIWp3U
X-Gm-Gg: ASbGnctN/MhB37gdQYzpRNkyZ6xAbU0hrwmxvBqNbIzpOG9vJFa/GF1A8nBN1bGJxFY
	07EMFTnRmdFKfOJSi75KWI4EiE/N2xjBxzIIFDII1XGezbAtRKe8Uibi8h+v9uVhxikLEX4K93+
	eJco9itVc8qZ1KiGh5GRD0eV4bX2r5Dk2kdAn/tZpy1E20tSqo4ZR10dEkNLK6eLCgjlvryFjPh
	/b3OeForDcelsiYwdTJ9DXDKGcCzlsdNrBK9lHn
X-Google-Smtp-Source: AGHT+IG58XmVVP4JYJU1AfrUfvapvQBotoDRlseFBHxJw51RyRcpKv6Ocibos4E3WKcK0v3GK2U8+crTo++BhUDtQrU=
X-Received: by 2002:ac8:5754:0:b0:4b6:2d44:13c4 with SMTP id
 d75a77b69052e-4dd1814d82dmr5668941cf.10.1758895631929; Fri, 26 Sep 2025
 07:07:11 -0700 (PDT)
MIME-Version: 1.0
From: Mostafa Saleh <smostafa@google.com>
Date: Fri, 26 Sep 2025 15:07:00 +0100
X-Gm-Features: AS18NWDXUhX2c5Ql_neW8IBl1rstnr2mdAIs4XtgEZx5rukS5nC-KjFNy7VgTYk
Message-ID: <CAFgf54oYjUEg9KkQUzneYTZH1Z8cX56va5M0853eWPFaYT+Z2A@mail.gmail.com>
Subject: Support for Rock PI-4b
To: devicetree@vger.kernel.org, 
	"moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, 
	open list <linux-kernel@vger.kernel.org>
Cc: Rob Herring <robh@kernel.org>, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_070714_574698_E1E194F8 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

SGksCgpJIGFtIHRyeWluZyB0byBydW4gTGludXhbMV0gb24gbXkgUm9jayBQSS00Yiwgd2hpY2gg
SSBzZWUgaXMgc3VwcG9ydGVkIGluCnRoZSBrZXJuZWwgaW4g4oCccmszMzk5LXJvY2stcGktNGIu
ZHRz4oCdLgoKSG93ZXZlciwgY29tcGlsaW5nIOKAnGRlZmNvbmZpZ+KAnSAoQVJNNjQpIGFuZCBm
bGFzaGluZyBteSBJbWFnZSBkb2VzbuKAmXQKd29yaywKSXQganVzdCBoYW5ncyBiZWZvcmUgYW55
IGNvbnNvbGUgKGV2ZW4gd2l0aCBlYXJseWNvbiksIEkgdHJpZWQgdG8gYWxzbyB1c2UKc29tZSBv
ZiB0aGUgdmVuZG9yIGNvbmZpZ3Mgd2l0aCBubyBsdWNrLgpJIGRpZCBzb21lIHJlc2VhcmNoIGFu
ZCBmb3VuZCB0aGF0IFsyXSwgd2hpY2ggaW5kaWNhdGVzIHRoYXQgdGhlIHVwc3RyZWFtCnN1cHBv
cnQgaGFzIGJlZW4gYnJva2VuIGZvciBzb21lIHllYXJzPwoKSGFzIGFueW9uZSB0cmllZCB0byBm
bGFzaCBhIHJlY2VudCBrZXJuZWwgc3VjY2Vzc2Z1bGx5IG9uIGl0PyBvciBhbnkKdGlwcyBhcmUg
Z3JlYXRseSBhcHByZWNpYXRlZC4KT3RoZXJ3aXNlLCBtYXliZSBpdCBjYW4gYmUgcmVtb3ZlZCB0
byBhdm9pZCBtaXNsZWFkaW5nIG90aGVyIGRldmVsb3BlcnMKKEkgZ290IHRoaXMgYm9hcmQgdG8g
ZG8gc29tZSB1cHN0cmVhbSBrZXJuZWwgZGV2ZWxvcG1lbnQgb24pCgpbMV0gYmFzZTogNGZmNzFh
ZjAyMGFlNTlhZTJkODNiMTc0NjQ2ZmMyYWQ5ZmNkNGRjNApbMl0gaHR0cHM6Ly93aWtpLnJhZHhh
LmNvbS9Sb2NrcGk0L2Rldi9rZXJuZWwtbWFpbmxpbmUKClRoYW5rcywKTW9zdGFmYQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
