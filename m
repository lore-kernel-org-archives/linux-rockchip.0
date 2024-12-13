Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D217E7717D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvTBa82zTYNlqFjal78EwjIFZdDQNK5CEnXrkwIgq5M=; b=XRnv8l0y/ELYZp
	5COI1MZOg9xqk0FDDTC4QqsdxhpPuuSThyyPOnrR2uQIwWZaRrA8u76iB0B3YeI5CgKLr4ZzPcZ73
	nCfsnAqL1n2t1WgqzD+v/Qv7xC4cpPg17mSXzolJ01bc/+IOCrO5P+M5gVsZGIA3tXww8hAJ+e2TX
	HKQpGBfostph936XK3AUsfywMKplvu0NqLJ4/o59K8lf4YTMD9s4OC604t5eQeXMZWOtWyhALqGYA
	XxEtztz7FRhSzW965Yas/TdGUZ+e4vM1JlaahTct5TnbpdcaTKwWEoXP+k2RbleQULeHS2go1RPtU
	xZVg0vL9XafoX3Z53sNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM895-00000004M0E-15UF;
	Fri, 13 Dec 2024 16:04:03 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM893-00000004Lzp-0JNa
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 16:04:02 +0000
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-3a7e108b491so15906615ab.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2024 08:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734105840; x=1734710640; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4MyhE6p4xaQ3O2A7awygF6dZuTWlyJtp/nrxGTLFcJo=;
        b=VizYpXjsjYflGotk3xGj8o5wiXiIiApncQ1HKgE0G16h73tkh9CNCenk2PYjRWwFUW
         sf2Nav8GDMBr5lLzUaEEbQ+G9LDZR5Jth5IKPpxznYvDOwT+6hU1izUoeXgfqQX9ePe8
         BFuuuUssqSlhCdmzsuwmJ05g/BEJFSitjThNFxzTii7ty8YE32ym+u/+SPYy4vppi3Xr
         JQbGOIr3Pn/yXYpRrI5hj9xV803wAMl8NsZC91XQdYjfoKDTlDygoMxTNdu3lM/89sBd
         SCiYD6KrCBWyMRUo9xk6V2LgXc0b8R7uEb1rasPmg08EO915IB5nTWqCZHcxcX71pvOr
         LBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734105840; x=1734710640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4MyhE6p4xaQ3O2A7awygF6dZuTWlyJtp/nrxGTLFcJo=;
        b=TzhaRAtOsyRPIhmlu3p9HZc0U6H2L8ID3vPH+/iJvguySgJit9xGHonnvHxhjVy9dY
         3ndYNyHLpJTA3Isqsl8DU1REBvfthpPyBY+VpEV7KLqiizorBQxzdI5dB3x0CILGJt2a
         4l2qMsz8ofmZIz0h/BINg6OqQxhOcNeS/3opZJWo0PuUFSJUdmTcz/9Roy9HiAHX2Ggz
         ZiTjP45J1rAJkyI8IqLu/GGsvQT7bkaela6uwZqCoJ7kJL0cYdo/ki9oA2GO7KKXhnMW
         oor6rQ82k1YzRZH+/N760sDqlSb5tkwHOQtCQ3cJal5lJNqcIf7k31rqTKsnROVzUfqf
         YT5A==
X-Forwarded-Encrypted: i=1; AJvYcCUMWQWGaAyeUZ9k0GfNHdHbYBGYfE6TefbwbqrC11aPfnY2VwZ27oGj90ShWDDrXAvl6uop6envpKAKUUZ02A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwW1ymTYD0Tip3lfHrMk2kxFKQuRmPwvHy/ThKk66InMVVCfBLF
	MLR/9YGqVyTk8BYWRqybnMJNKyzWjWsbq764ptUatlA+yUFDrrku
X-Gm-Gg: ASbGncvoRW2X6VaUYCwfcGD1B0xWkwE862wSQrpLSplQFizVK0AAWKAgidP70eQMRMQ
	+Az8biSioqG4Ltj6+SQHjunFtDtA8EtZClPv00M4WaleKnRD0TjOoJApNfsMX4w8ewtgfg9NxXk
	S2SDpcWL6dsQOlvPfeNzGxUd54UpzDo3d8vTDIriuK9wYRHdfMzXE6vJTkUemZrjNBO8A+0JySU
	iSHkQoUXrHkU/7nEnIlUoEHa7w4wbQzSNmyXOEM0m8gY5gx5jwDIA8Ks3PGVrBC90Bu7zv7TWih
	CMu01VX3pt7UfgFDVgvCVJqVa24=
X-Google-Smtp-Source: AGHT+IEszlQXuqrkPYsX/HEMys/ZHxP36z40t4z9cG7j/MZLWhxTBqgX7gBXJMpgbC3JI27DgkLtcQ==
X-Received: by 2002:a05:6e02:1a07:b0:3a7:1f72:ad3c with SMTP id e9e14a558f8ab-3aff0961e22mr37626355ab.19.1734105840042;
        Fri, 13 Dec 2024 08:04:00 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3a817f6e099sm40130415ab.23.2024.12.13.08.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 08:03:58 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Cc: krzk@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: Re: Re: Re: [PATCH v1 2/2] [Draft] dt-bindings: arm: rockchip: Add Firefly ITX-3588J board
Date: Fri, 13 Dec 2024 10:03:37 -0600
Message-ID: <20241213160337.5561-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241213154114.5078-1-shimrrashai@gmail.com>
References: <20241213154114.5078-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_080401_111169_AA7F62A3 
X-CRM114-Status: UNSURE (   5.32  )
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

On 2024-12-13, Shimrra Shai wrote:
> As you said that is necessary "for automated tools to work"

Correction to make an exact quotation: I meant to refer to when you said
"so this won't be tested by automated tooling".

     Shimrra

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
