Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50378CA101E
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvanmhqVk7zMGNQJYL056rPfpfe2L2a5Tn1Jkyov/mQ=; b=eiAkc9O6D92xCs
	JAI23LgUKTrAJhXJkcVeWc9oYLmo4WSuS0aYS3TmTh+m2K1/Dw/C2Ehb3JY6KURrT0v13gWgPkfXl
	gAkQrTv+S7b8kzOjyaC59GGyQMGnZ9GEqT6Naz4wgne2dR+waxBayUxCKwur23R5BYgYwCEdtf3os
	3LqvQqAwcMWqYvPhAsblM8cU6iRyOPUnFVsWdhOG/Q7WZIJ/NoReBFJAiAsNdNJuEUGh2tngUwY6B
	z0wNlMgqIP7yIPiu3cqJ05ifMYJf/jKny4ECXxHrxsP0pbwa5b6yuUdsZw6iabvMX2WL77iTamaJv
	TUzFzyHvVScgwrbO8GUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skvbF-0000000CdhM-1uO5;
	Mon, 02 Sep 2024 01:11:21 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skvaJ-0000000CdUA-2RIH;
	Mon, 02 Sep 2024 01:10:24 +0000
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-82a3022be9eso88509839f.3;
        Sun, 01 Sep 2024 18:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725239422; x=1725844222; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4gzV92PxZE+qFNA+RekwmEuIebSetmvmkFXMiYp3PY=;
        b=Cja3I9sk2O5bT/v/1FrJnGNaiAIija+9C14Q5y0ir9pb7qL3PwH8tnTRHYfZTpdcC6
         wxzO/yIIoR4G+wHcfmfigy/bgZ2hWL5eQv728L3M/18noWzcyH1Q6uiOJ4YN2L3rmpjb
         14fEZfYsy4h0d/ph2I9JLFoU2azAdOpZET/iFKWAMJGhdFzPDsNV4JLnsbSlZiWF4xwI
         kGnpGej78re0r4MUWY83YepPScMtswmjqIx4Q8Lhyews+VPSGqsJb02VbPuXVZ+6yY2o
         W6TDmqlBx0nS1JwQ55jVlO53GGcxdEBgGSKL9owdp/qdxBmV15+ojeAph8LBo5q3VT0s
         4h2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725239422; x=1725844222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E4gzV92PxZE+qFNA+RekwmEuIebSetmvmkFXMiYp3PY=;
        b=r6CSF9ngmWkFc+nOct/5jPB1vbbqarV6a40iwrE7FFLX7grHVn4XCU5ANc4u7bTf6q
         /jEpO3gLe3IA5wW3DJiNNi+MRlPO/fiOF0RGXpfu+ASVJwEnMwx4Dbjw+RIZiHPQgZUF
         RdugXTB4Mcfgcvlg7drajlqgszkRkNlUG0sITgSDoBi8brJRkBM3WJCDdvFlU1OhgKpJ
         hnznexSQqoxZainw7uH38KeXLBs+izq1hBjI2W3p+5HCGPD7NHHElbwNaEJJwMHmkb8h
         1dtNnvO+1trL7fvTbljo6TXJfXz9OTFnpkWx1PMTmRyDMEtTsr8EfljdYTA37NWhKzcO
         sJ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNlYB6I09K3dv29AnCfLOe2k9gJMekHpEEhgH/vgsLQZAozcB5S2yZo9mFum5VqcM7Awf28E+koAOHVtgIGdim@lists.infradead.org, AJvYcCXX7ysHxjARq5ukI9ZfHDFEEYy+fJo1aunm+Zh+Gh3dnbKUqFwMs8tnbRCflIR811iO/LJhKCDQyki7/qw5Dnc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyN7zcDKQqydtUuoJFYCavjjmjKPsywhrBji/9Rw9O+ws/aiVuh
	rqZR9RrlmtFw/wxSzb7S3eaaThYVViNqYrgEvWw36zEEdsKgS2SD
X-Google-Smtp-Source: AGHT+IFyhMM0xDEm3decKqdzpa8ZS+bTABQJ0zYWbmUuOdCfCFThXfgY07/epTd0Cp/ktdQ+h6vMgg==
X-Received: by 2002:a05:6e02:194d:b0:397:6dfc:993a with SMTP id e9e14a558f8ab-39f4e11924fmr65501285ab.21.1725239421925;
        Sun, 01 Sep 2024 18:10:21 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f552cd162sm9103755ab.17.2024.09.01.18.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 18:10:21 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: cristian.ciocaltea@collabora.com
Cc: Laurent.pinchart@ideasonboard.com,
	aarnoud@me.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	ldearquer@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	markyao0591@gmail.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	robh@kernel.org,
	s.hauer@pengutronix.de,
	tzimmermann@suse.de
Subject: Re: Re: [PATCH v5 3/4] dt-bindings: display: rockchip: Add schema for RK3588 HDMI TX Controller
Date: Sun,  1 Sep 2024 20:09:48 -0500
Message-ID: <20240902010948.3654-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <5ea24ad3-7faa-4a59-ba10-d43b32b3b40e@collabora.com>
References: <5ea24ad3-7faa-4a59-ba10-d43b32b3b40e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_181023_640637_E7E73725 
X-CRM114-Status: GOOD (  13.42  )
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

Cristian Ciocaltea wrote:
> On 8/31/24 9:13 AM, Krzysztof Kozlowski wrote:
> >
> > Please define all clocks.
>
> The other clocks are defined in the common binding, should we reiterate
> them?

I would suggest yes, they should be reduplicated, if only to maintain
consistency with all the other docs. A grep through the bridge docs
shows that there are virtually none which use a "{}" placeholder like
this. While it seems kind of like one might worry about "don't
repeat yourself" syndrome, keep in mind this is not code, but human-
used documentation. Having all the information available at a glance
would seem to be the most convenient to the end (developer) user, so
they aren't having to toggle between two separate files. Of course
there may be some questions regarding docs becoming out of sync, but
*ideally* we don't want to break backward compatibility with device
trees (esp. given how I am imagining firmware integration to work on
these platforms, as the RK3588 is at at least low-end desktop-grade
performance and UEFI packages have already been built for it), though
of course that doesn't mean adding new options is off the table.

(FWIW, this is what I did in my now-withdrawn-at-your-request
re-submission; I reduplicated the bindings as it seemed that's what
others here were pushing for and thus that felt like the quickest way
to get this important driver approved.)

- Shimrra Shai

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
