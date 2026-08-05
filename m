Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89607C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 15:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2jN0+4unRk2o5q+5aYZbv5khSxLj5ALAvQObPm+AQg=; b=n9jCIGDI4eofhb
	mkt4OHLuv7F9lVuCbMfLEK0UTg+1eDyZ7PcvTkRngV7cZBgz8pW4r0SGlmfCfun623k/w7BZMCWLr
	3qzfR6TzR6jWxsQOx12U63lLw5TrC5b/GThIR5UTFlN4HhD+c3WXrbkx3KkZsNib8MtYiTpERvyHO
	rzTP2wTkl5AE3YcLVZ2LKy4gX2bBnbrVzZg4+zGqGcN3KSG+fH110tZtUDWPdtVju6ohPPfsp4h/8
	5i3Zywjz75cKq9jHXH0JeqjLcSLsIcg9HyYDw+3R0tHLpQN3kXKFz3RFfunOCPt8/JK72+t0Xc8uH
	u8qwoLSXOvTIEnqdwSLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrdjn-00000004CZO-46Hu;
	Wed, 05 Aug 2026 15:40:59 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrdjl-00000004CYf-1TQC
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 15:40:58 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-472d9d69e16so52506f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 08:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785944455; x=1786549255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YGyZnOMySi65/bdZ5huX6xTxZFcHOTvx87ZG/dFENaQ=;
        b=sQ70kZ0pQO8tqmA/dpJMLL8z3vaEtcMiPcs7Ab6Q4QedqBZSR7SgN+fcPqUw08IDkt
         SH13SpQ6ThQQYvolVqVWgYMIhAC9aSlYBb9SDjlIuyHWwgg5xIZW/r8fhdFDfwhWUmcA
         0HYscmfs3E0Pt7iCqs/btaaaXzbwB/ByxR6iBt7jFImDm0JIwX0gveT5VJzr7svCLukQ
         s3jTGg+UqTHNcqttjrqxT+eTABW1S0ygR8cOs+9QqTEfarptsOEV/V4bDtm2DfHnqPGe
         wl/g7iIlaZFG3ySYautiP+55qH4DMK46PSq/kP3JJfwScbXLiU92TA0iAqZGFRUugpMt
         YCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785944455; x=1786549255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YGyZnOMySi65/bdZ5huX6xTxZFcHOTvx87ZG/dFENaQ=;
        b=p3pI7abMJw3q/n8oq1xC33bcI9IJesucWkodyvPuNexGJqpyf57oOhyEG3bltxaWpL
         7+n9k/UqM2RqUA/1zmfcUd/lWRSeIB+3qlyqHljbwiiQZZjWXFb6pODW4nCfvcPQyJh5
         eUkU/gnKDN1GRsn4L5RPBf8z1pJjFLMPaSY0QEvQ/sQP3I8CIrzZSDbC61RcTjNjXCqe
         c+TzIjvkn5MmkHhWbpLYU+ter65B3QBU4ibr7ejOavx5YIzLoN0jy/XzEYEp8RfFWopH
         cMl30l4t0TEZb0V/4aGo2neHu/JTTMzR+RGn+1ydE5wo90HvyA6dSIHybYMiyZHhdUay
         tB4w==
X-Forwarded-Encrypted: i=1; AHgh+Rqbd+jh2qjAFmdSCI84QX2ni7x7x+kPPhzmzqX7cKYpVMvCIdx444S8w4Nh7CYKgn92hU/1ybKjBzsp1uWhrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YznXyfUts2n1o89z85JleA7DBPywn1uSdRPtLWWVoPjuE2fUlUH
	AyOKYIFHAiMWgU1cBQEqxL+JhfTzBoVvlJXRmazNOIgdKpH5i7azoAaf
X-Gm-Gg: AR+sD11mtA9o43uLXg5Bb9CxRpZRdSH1vHDYFbCGhyFgCRiewk27qrSelEjq8eyIJDg
	AqJDr2sxhw2+C1gRYnFlhnIboTbJ9UeyX4AH1NIS/i7lIw6a90c5MRzSkHqZhY8LI9/PSd6/IUg
	ABs199CZuaI54xhPHU02wAJ5dIa6DpaH0+6UN/gDFw5L39XuPZTPn6PLTvyw8lodus/K9ScnVQU
	NB6F9SLDTh1bk79mTl6Vn5Mjz/SBWSi5XGA4ctRvmpc8nKA/PkrURjM6W5BEdSUGzpUD4NsE27F
	AGWwFVB+eZmElYzrfp5/QJG2Ux+cq+5dAiD4ZxwP/Lmv43O1NDkcwGEBrB5D56+xcBqz1lZ2CvI
	c5k9nzYSI/IHBpArB1vUGk3ReTMtquRlc8n2UDcD6dXZeklUFQuxeEEcvOk778UGhA0/Yvx2lSk
	9nQGXdajGtf0QHuE5DBrN6rPfBxUJRklSBCpE3athJaxpL0+ciWSJlQbQFLUq5a4817gQuAOqnm
	wQ0qoO7NOBEsG3P8G2ubKjJiqLAjCMm2ihU2CmiWUC21O2gNJuTNoHnOgtcFXApiTij
X-Received: by 2002:a05:6000:1785:b0:47f:91f0:9ab with SMTP id ffacd0b85a97d-47fec484f36mr6647230f8f.0.1785944455399;
        Wed, 05 Aug 2026 08:40:55 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B86F10001BE789C6EE938EE.dsl.pool.telekom.hu. [2001:4c4e:1b86:f100:1be:789c:6ee9:38ee])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fec23e250sm10866434f8f.26.2026.08.05.08.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 08:40:55 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Wed,  5 Aug 2026 17:40:33 +0200
Message-ID: <20260805154039.10161-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_084057_390264_420C9F87 
X-CRM114-Status: UNSURE (   8.52  )
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

Hi Dmitry, Mauro,

First, belated thanks to Dmitry, Sebastian and Krzysztof for the reviews
and testing across this series - much appreciated.

A gentle ping: all four patches carry Reviewed-by tags (2/4 also has
Dmitry's Tested-by) and no changes have been requested since 23 July. Is
there anything needed from my side for the series to be picked up into
the media tree?

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
