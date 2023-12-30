Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AC02C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVSarsUoFhGaa3n/YBKDIRwk8yPYPssnWjvQWMW2Sk0=; b=T51CRIuvXiffxh
	DgoOXapL/sW2cddhx7LMTUxDQNyyJvxVkoAgiRlBOMCWr74yiiMGZxFf5BR86g7ITt73riVxeybLc
	EbZnzch1PPvctq9GJojcUOrbtVSFuv7YAs1krs7IpydDpwoCCCqm8khplu8WySCc35E37+w4bfUgT
	mCaTNbxsXrl5jYaGHm3iKjKiqK3q+u/SVorHjFycxUZS0WI/AtBObyUojSSoS592dNVzxaVGW2pd3
	Oi7T73PE0Ga2RaRigjXbM/nE/a+Gl4lUPQAG8siceWTpZLhozQrvHEHRLFfqRlxdPKTuE27KKszcw
	a/V/iSfH9Gv0wS+67z9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJUOR-002O1U-2f;
	Sat, 30 Dec 2023 08:08:27 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJUOO-002O12-33
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Dec 2023 08:08:26 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-36017ab9760so13617055ab.3
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Dec 2023 00:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703923702; x=1704528502; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kTFPw7SSCy/tJCxWpvSz/wr15aBQzl2Y5J7YUlIbDmw=;
        b=MnIgZPB/rTZoUTx91psr1kl0yEdpf9NFoZrsJ13umd/xxwN4h4NJkUBeEIzH9g+GzE
         fdkeqf81N23Yub9izxu/0JOaghafKkJyyxm9JCMR5GIMx1TotPjC6WRJ792XDfDUP4QV
         AP/FYaFF9XBoEjMx69zV+LiYlVoFdtR3SLzI594fsdcjgs3ELpeXnr18h8RBe618q6QU
         2+J277S6+p5GJ0d3RTry72GgGTa+yI+gBly/0EV+pbv+xDsDF1fxkxCE6OYwoyB4V0TX
         gdIwEeGCmOs4iIp2lyOBvqN4SjsKfzMlfLCbLqa8W4COX+pqB1UtgnThuPFRfPsbvB2r
         O1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703923702; x=1704528502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kTFPw7SSCy/tJCxWpvSz/wr15aBQzl2Y5J7YUlIbDmw=;
        b=O+EsrmTnVv5ybCtCJA2T8ulDsWPn5a93xSYA9suGyCb2wUoeLZKLDqL3jHrYc9u1MO
         wdwfikb+3aXFVN9tKhA7puWbJru/FvPMUVWYJa2nLdArWDqBKxtkj+XQgwHwLKzW3qzc
         4f2h5RT78bGttK8Bpry8fECCrzw8mIcCdJ5mBl9RMV7dRLZN7yF3iyzT1R57EkOf8wPF
         L++O4pk1AKwsjH2vPkatRA4dEYdveJu0YnajSdfi1vfr4gx4E4AFGLrBa4EgQxfgREei
         r+MFznUSfeKIL2lzycWz9NTVpDhabzeWryXGWiHWQd3aqHMdW3c4kvLUnls+JcHxEIaH
         ky9A==
X-Gm-Message-State: AOJu0YzwwY2t7dW6aghHgrRkK8Pu4esyepmoGCWjUe/N9tbyIQt0F9cY
	j+vWPtK2UBTc85eivBddfWo=
X-Google-Smtp-Source: AGHT+IH0aH1upL9AXxloMy3Lj7gxqSeJEG3P+zNJLpfJS7aBFOusjZnwkW84Y8sMLcgBMWV+McC6uQ==
X-Received: by 2002:a05:6e02:216c:b0:360:303:fe67 with SMTP id s12-20020a056e02216c00b003600303fe67mr10265162ilv.22.1703923702423;
        Sat, 30 Dec 2023 00:08:22 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:23b7:4d83:3222:c5dd])
        by smtp.gmail.com with ESMTPSA id c1-20020a63a441000000b005ce472f2d0fsm5413911pgp.66.2023.12.30.00.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 00:08:21 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: krzk@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com
Subject: Re: [PATCH 3/3] dt-bindings: media: rockchip-vpu: Add RK3588 compatible
Date: Sat, 30 Dec 2023 16:08:14 +0800
Message-Id: <20231230080814.3736970-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <1b6787cf-7f39-4d27-9ccb-62f538b31933@kernel.org>
References: <1b6787cf-7f39-4d27-9ccb-62f538b31933@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_000824_987138_A1480BFD 
X-CRM114-Status: UNSURE (   5.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Many thanks for your kindly review. Please forgive my newbee actions.
I just learned how to reply mails with git send-email so forgive me
again for my late reply.

I have just sent v2 of this series to maintainerers and I will send
v3 later.

Many thanks to you guys,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
